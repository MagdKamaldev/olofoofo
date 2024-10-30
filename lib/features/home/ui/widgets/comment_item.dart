import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/helpers/time_ago.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentItem extends StatefulWidget {
  final String? profileImage;
  final String comment;
  final String time;
  final String userName;

  const CommentItem({
    super.key,
    required this.profileImage,
    required this.comment,
    required this.time,
    required this.userName,
  });

  @override
  CommentItemState createState() => CommentItemState();
}

class CommentItemState extends State<CommentItem> {
  bool _isExpanded = false;

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
                  widget.profileImage ?? "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg",
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
                          widget.userName,
                          style: TextStyles.font15semiBold,
                        ),
                        Text(
                          timeAgo(widget.time),
                          style: TextStyles.font12Medium,
                        ),
                      ],
                    ),
                    verticalSpace(5),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isExpanded = !_isExpanded;
                            });
                          },
                          child: widget.comment.length > 100
                              ? RichText(
                                  text: TextSpan(
                                    text: _isExpanded
                                        ? widget.comment
                                        : widget.comment.substring(0, 100),
                                    style: TextStyles.font12regular
                                        .copyWith(color: Colors.black54),
                                    children: [
                                      if (widget.comment.length > 100 &&
                                          !_isExpanded)
                                        const TextSpan(
                                          text: '... See More',
                                          style: TextStyles.font12Medium
                                              ,
                                        ),
                                    ],
                                  ),
                                )
                              : Text(
                                  widget.comment,
                                  style: TextStyles.font12regular
                                      .copyWith(color: Colors.black54),
                                ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: (){
                            //TODO; implement delete comment
                          },
                          child: SvgPicture.asset("assets/images/Trash.svg"),
                        ),
                        horizontalSpace(10),
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