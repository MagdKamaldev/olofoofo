import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/helpers/time_ago.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LocalCommentItem extends StatelessWidget {
  final String? profileImage;
  final String comment;
  final String time;
  final String userName;

  const LocalCommentItem({
    super.key,
    required this.profileImage,
    required this.comment,
    required this.time,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity( 
      opacity: 0.5,
      child: Padding(
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
                                // Toggle expansion if needed
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
      ),
    );
  }
}