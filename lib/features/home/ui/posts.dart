import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/features/home/data/models/home_responses.dart';
import 'package:circle_sync/features/home/ui/widgets/post_item.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final List<Post> posts;
  const Posts({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => PostItem(
        images: posts[index].media ?? [],
        postUserId: posts[index].author!.id!,
        isDetail: false,
        postId: posts[index].id!,
        isLiked: posts[index].isLiked ?? false,
        time: posts[index].createdAt!,
        profileImage: posts[index].author?.profileImg,
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