import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/constants.dart';
import 'package:circle_sync/core/helpers/shared_pref_helper.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/helpers/time_ago.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/features/home/data/repos/home_repo.dart';
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/home/logic/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentItem extends StatelessWidget {
  final String myId;
  final String commentUserId;
  final String commentId;
  final String postId;
  final String? profileImage;
  final String comment;
  final String time;
  final String userName;
  final VoidCallback onCommentDeleted;

  const CommentItem({
    super.key,
    required this.profileImage,
    required this.comment,
    required this.time,
    required this.userName,
    required this.commentId,
    required this.postId,
    required this.onCommentDeleted,
    required this.commentUserId, required this.myId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 23.sp,
                backgroundImage: NetworkImage(
                  profileImage == null || profileImage == ""
                      ? "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg"
                      : profileImage!,
                ),
                onBackgroundImageError: (_, __) => const Icon(Icons.person),
              ),
              horizontalSpace(15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          userName,
                          style: TextStyles.font15semiBold,
                        ),
                        Text(
                          timeAgo(time),
                          style: TextStyles.font12Medium,
                        ),
                      ],
                    ),
                    verticalSpace(5),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // Toggle expansion
                            },
                            child: comment.length > 100
                                ? RichText(
                                    text: TextSpan(
                                      text: comment.substring(0, 100),
                                      style: TextStyles.font12regular
                                          .copyWith(color: Colors.black54),
                                      children: [
                                        if (comment.length > 100)
                                          const TextSpan(
                                            text: '... See More',
                                            style: TextStyles.font12Medium,
                                          ),
                                      ],
                                    ),
                                  )
                                : Text(
                                    comment,
                                    style: TextStyles.font12regular
                                        .copyWith(color: Colors.black54),
                                  ),
                          ),
                        ),
                        horizontalSpace(10),
                        if (commentUserId == myId)
                        GestureDetector(
                          onTap: () {
                              
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return BlocProvider(
                                  create: (context) =>
                                      HomeCubit(getIt<HomeRepo>()),
                                  child: BlocBuilder<HomeCubit, HomeState>(
                                    builder: (context, state) {
                                      return AlertDialog(
                                        title: const Text(
                                          "Delete Comment",
                                          style: TextStyles.font18Semibold,
                                        ),
                                        content: const Text(
                                          "Are you sure you want to delete this comment?",
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
                                                style: TextStyles.font14Medium
                                                    .copyWith(
                                                        color: Colors.red),
                                              ),
                                              onPressed: () async {
                                                Navigator.of(context).pop();

                                                try {
                                                  context
                                                      .read<HomeCubit>()
                                                      .deleteComment(
                                                          postId,
                                                          commentId);
                                                  onCommentDeleted();
                                                } catch (error) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                          'Failed to delete comment: $error'),
                                                    ),
                                                  );
                                                }
                                              }),
                                        ],
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                          child: SvgPicture.asset("assets/images/Trash.svg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(15),
        ],
      ),
    );
  }
}
