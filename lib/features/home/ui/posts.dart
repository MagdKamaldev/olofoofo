import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/features/home/ui/widgets/post_item.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Column(
            children: [
              const PostItem(
                isLiked: true,
                time: "1h",
                profileImage: "",
                postImage: "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
                userName: "Magd",
                postCaption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra ",
                likes: 23,
                comments: 2,
              ),
              verticalSpace(20)
            ],
          );
        },
        childCount: 10, // Number of posts
      ),
    );
  }
}
