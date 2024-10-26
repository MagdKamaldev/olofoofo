import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/features/home/data/models/post_response_model.dart';
import 'package:circle_sync/features/home/ui/widgets/post_item.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final List<Post> posts;
  const Posts({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,  // Added to allow it to size correctly within a Sliver context
      physics: const NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
      itemBuilder: (context, index) => PostItem(
        isLiked: posts[index].isLiked ?? false,
        time: "1h",
        profileImage: posts[index].author?.profileImg ?? 
                      "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg",
        postImage: 
                   "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
        userName: "${posts[index].author?.firstName ?? 'User'} ${posts[index].author?.lastName ?? ''}",
        postCaption: posts[index].content ?? "Post Caption",
        likes: posts[index].likesCount ?? 0,
        comments: posts[index].commentsCount ?? 0,
      ),
      separatorBuilder: (context, index) => verticalSpace(20),
      itemCount: posts.length,
    );
  }
}