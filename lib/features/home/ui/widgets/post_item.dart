// ignore_for_file: deprecated_member_use

import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PostItem extends StatelessWidget {
  final String profileImage;
  final String ? postImage;
  final String userName;
  final String postCaption;
  final String time;
  final int likes;
  final int comments;
  final bool isLiked;
  const PostItem(
      {super.key,
      required this.profileImage,
      this.postImage,
      required this.userName,
      required this.postCaption,
      required this.likes,
      required this.comments,
      required this.time,
      required this.isLiked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 330.h,
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
                      backgroundImage: NetworkImage(profileImage),
                    ),
                    horizontalSpace(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: TextStyles.font15semiBold,
                        ),
                        Text(
                          "$time ago",
                          style: TextStyles.font12Medium,
                        )
                      ],
                    )
                  ],
                ),
                verticalSpace(10),
                Text(
                  postCaption,
                  style:
                      TextStyles.font12regular.copyWith(color: Colors.black54),
                ),
                if(postImage!= null)
                verticalSpace(10),
                postImage == null
                    ? Container()
                    :
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      postImage!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 170,
                    ),
                  ),
                ),
                verticalSpace(10),
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
                      likes.toString(),
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
                      comments.toString(),
                      style: TextStyles.font12Medium,
                    ),
                  ],
                ),
                verticalSpace(10),
                Row(
                  children: [
                    horizontalSpace(15),
                    Text("View all $comments comments",
                        style: TextStyles.font12Medium
                            .copyWith(color: Colors.black54)),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
