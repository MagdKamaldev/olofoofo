import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/helpers/time_ago.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PostItem extends StatefulWidget {
  final bool isDetail;
  final String postId;
  final String? profileImage;
  final String? postImage;
  final String userName;
  final String postCaption;
  final String time;
  final int likes;
  final int comments;
  final bool isLiked;

  const PostItem({
    super.key,
    required this.profileImage,
    this.postImage,
    required this.userName,
    required this.postCaption,
    required this.likes,
    required this.comments,
    required this.time,
    required this.isLiked,
    required this.postId,
    required this.isDetail,
  });

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorManager.backgroundGrey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 23.sp,
                    backgroundImage: NetworkImage(widget.profileImage ??
                        "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg"),
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
                ],
              ),
              verticalSpace(20),
              // Post Caption with Expandable Logic
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: widget.postCaption.length > 100
                    ? RichText(
                        text: TextSpan(
                          text: _isExpanded
                              ? widget.postCaption
                              : widget.postCaption.substring(0, 100),
                          style: TextStyles.font12regular
                              .copyWith(color: Colors.black54),
                          children: [
                            if (widget.postCaption.length > 100 && !_isExpanded)
                              const TextSpan(
                                text: '... See More',
                                style: TextStyles.font12Medium
                                    ,
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
              if (widget.postImage != null) verticalSpace(10),
              if (widget.postImage != null)
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      widget.postImage!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 170,
                    ),
                  ),
                ),
              verticalSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    "assets/images/Heart.svg",
                    height: 20.h,
                    width: 20.w,
                    fit: BoxFit.cover,
                  ),
                  horizontalSpace(10),
                  Text(
                    widget.likes.toString(),
                    style: TextStyles.font12Medium,
                  ),
                  horizontalSpace(30),
                  SvgPicture.asset(
                    "assets/images/Chat.svg",
                    height: 20.h,
                    width: 20.w,
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
                        context.pushNamed(Routes.post, arguments: widget.postId);
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
    );
  }
}