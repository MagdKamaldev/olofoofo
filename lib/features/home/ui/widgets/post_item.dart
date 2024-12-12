// ignore_for_file: deprecated_member_use
import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/helpers/time_ago.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/features/home/data/repos/home_repo.dart';
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/home/logic/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostItem extends StatefulWidget {
  final bool isDetail;
  final String postId;
  final String? profileImage;
  final String userName;
  final String postCaption;
  final String time;
  final int likes;
  final int comments;
  final bool isLiked;
  final String postUserId;
  final List<String> images;

  const PostItem({
    super.key,
    required this.profileImage,
    required this.userName,
    required this.postCaption,
    required this.likes,
    required this.comments,
    required this.time,
    required this.isLiked,
    required this.postId,
    required this.isDetail,
    required this.postUserId,
    required this.images,
  });

  @override
  PostItemState createState() => PostItemState();
}

class PostItemState extends State<PostItem> {

  @override
  void initState() {
    HomeCubit cubit = context.read<HomeCubit>();
    super.initState();
    cubit.isLiked = widget.isLiked;
    cubit.likes = widget.likes;
    cubit.getUserId();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     HomeCubit cubit = context.read<HomeCubit>();
    return BlocProvider(
        create: (context) => HomeCubit(getIt()),
        child: BlocListener<HomeCubit, HomeState>(
            listener: (context, state) {
              if (state is DeletePostSuccess) {
                Navigator.of(context).pop(); // Closes any dialog if open
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorManager.backgroundGrey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.pushNamed(Routes.userProfile,
                                  arguments: widget.postUserId);
                            },
                            child: CircleAvatar(
                              radius: 23.sp,
                              backgroundImage: NetworkImage(
                                widget.profileImage ??
                                    "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg",
                              ),
                            ),
                          ),
                          horizontalSpace(15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.userName,
                                style: TextStyles.font15semiBold,
                              ),
                              Text(
                                timeAgo(widget.time),
                                style: TextStyles.font12Medium,
                              ),
                            ],
                          ),
                          const Spacer(),
                          if (cubit.userId == widget.postUserId)
                            PopupMenuButton<String>(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(color: Colors.black),
                              ),
                              onSelected: (value) {
                                if (value == 'Edit') {
                                  context.pushNamed(
                                    Routes.updatePost,
                                    arguments: {
                                      'postId': widget.postId,
                                      'caption': widget.postCaption
                                    },
                                  );
                                } else if (value == 'Delete') {
                                  showDeleteDialog(widget.postId);
                                }
                              },
                              itemBuilder: (context) => [
                                const PopupMenuItem(
                                  value: 'Edit',
                                  child: Row(
                                    children: [
                                      Text(
                                        'Edit Post',
                                        style: TextStyles.font16Medium,
                                      ),
                                    ],
                                  ),
                                ),
                                const PopupMenuDivider(
                                  height: 5,
                                ),
                                const PopupMenuItem(
                                  value: 'Delete',
                                  child: Row(
                                    children: [
                                      Text(
                                        'Delete Post',
                                        style: TextStyles.font16Medium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              icon: const Icon(Icons.more_vert),
                            ),
                        ],
                      ),
                      verticalSpace(20),
                      GestureDetector(
                        onTap: () {
                          cubit.toggleExpand();
                        },
                        child: widget.postCaption.length > 100
                            ? RichText(
                                text: TextSpan(
                                  text: cubit.isExpanded
                                      ? widget.postCaption
                                      : widget.postCaption.substring(0, 100),
                                  style: TextStyles.font12regular
                                      .copyWith(color: Colors.black54),
                                  children: [
                                    if (widget.postCaption.length > 100 &&
                                        !cubit.isExpanded)
                                      const TextSpan(
                                        text: '... See More',
                                        style: TextStyles.font12Medium,
                                      ),
                                  ],
                                ),
                              )
                            : Text(
                                widget.postCaption,
                                style: TextStyles.font12regular
                                    .copyWith(color: Colors.black54),
                              ),
                      ),
                      if (widget.images.isNotEmpty) 
                      verticalSpace(10),
                      if (widget.images.length == 1)
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              widget.images[0],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: size.height * 0.5,
                            ),
                          ),
                        ),
                      if (widget.images.length == 2)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(19),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  widget.images[0],
                                  fit: BoxFit.cover,
                                   width: size.width * 0.37,
                                  height: size.height * 0.3,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(19),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  widget.images[1],
                                  fit: BoxFit.cover,
                                  width: size.width * 0.37,
                                  height: size.height * 0.3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      verticalSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              cubit.toggleLike;
                            },
                            child: SvgPicture.asset(
                              cubit.isLiked
                                  ? "assets/images/Heart_filled.svg"
                                  : "assets/images/Heart.svg",
                              height: 20.h,
                              width: 20.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          horizontalSpace(10),
                          Text(
                            cubit.likes.toString(),
                            style: TextStyles.font12Medium,
                          ),
                          horizontalSpace(30),
                          GestureDetector(
                            onTap: () {
                              context.pushNamed(Routes.post,
                                  arguments: widget.postId);
                            },
                            child: SvgPicture.asset(
                              "assets/images/Chat.svg",
                              height: 20.h,
                              width: 20.w,
                            ),
                          ),
                          horizontalSpace(10),
                          Text(
                            widget.comments.toString(),
                            style: TextStyles.font12Medium,
                          ),
                        ],
                      ),
                      if (!widget.isDetail) verticalSpace(20),
                      if (!widget.isDetail)
                        Row(
                          children: [
                            horizontalSpace(10),
                            GestureDetector(
                              onTap: () {
                                context.pushNamed(Routes.post,
                                    arguments: widget.postId);
                              },
                              child: Text(
                                "View all Comments",
                                style: TextStyles.font12Medium
                                    .copyWith(color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            )));
  }

  void showDeleteDialog(String postId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlocProvider(
          create: (context) => HomeCubit(getIt<HomeRepo>()),
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return AlertDialog(
                title: const Text(
                  "Delete Post",
                  style: TextStyles.font18Semibold,
                ),
                content: const Text(
                  "Are you sure you want to delete this post?",
                  style: TextStyles.font14Medium,
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text(
                      'Cancel',
                      style: TextStyles.font14Medium,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                      child: Text(
                        'Delete',
                        style:
                            TextStyles.font14Medium.copyWith(color: Colors.red),
                      ),
                      onPressed: () {
                        context.read<HomeCubit>().deletePost(postId).then((_) {
                          context.pushReplacementNamed(Routes.home);
                        });
                      }),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
