import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class PostItem extends StatefulWidget {
  final String userName;
  final String postContent;
  final int likesCount;
  final int commentsCount;
  final String imageUrl;
  const PostItem({
    required this.userName,
    required this.postContent,
    required this.likesCount,
    required this.commentsCount,
    required this.imageUrl,
  });

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Card(
        elevation: 2,
        color: ColorManager.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage(widget.imageUrl), // Placeholder image
                  ),
                  horizontalSpace(10),
                  Text(
                    widget.userName,
                  //  style: TextStyles.heading1.copyWith(color: Colors.white),
                  ),
                ],
              ),
              verticalSpace(10),
              Text(
                widget.postContent,
              //  style: TextStyles.body.copyWith(color: Colors.white),
              ),
              verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          color: isLiked ? Colors.red : Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                      Text(
                        '${widget.likesCount + (isLiked ? 1 : 0)}',
                  //      style: TextStyles.body.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.comment, color: Colors.white),
                        onPressed: () {
                          // Logic to handle comments
                        },
                      ),
                      Text(
                        '${widget.commentsCount}',
                    //    style: TextStyles.body.copyWith(color: Colors.white),
                      ),
                    ],
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
