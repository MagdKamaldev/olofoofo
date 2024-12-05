import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/features/profile/data/models/profile_response_model.dart';
import 'package:circle_sync/features/profile/ui/widgets/profile_post_item.dart';
import 'package:flutter/material.dart';

class ProfilePosts extends StatelessWidget {
  final String id;
  final String firstName;
  final String lastName;
  final String ? profileImg;
  final List<Post> posts;
  const ProfilePosts({super.key, required this.posts, required this.id, required this.firstName, required this.lastName, required this.profileImg});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ProfilePostItem(
        images: posts[index].media ?? [],
        postUserId: id,
        isDetail: false,
        postId: posts[index].id!,
        isLiked: false,
        time: posts[index].createdAt!,
        profileImage: profileImg,
        userName: "$firstName $lastName",
        postCaption: posts[index].content ?? "Post Caption",
        likes: posts[index].likesCount ?? 0,
        comments: posts[index].commentsCount ?? 0,
      ),
      separatorBuilder: (context, index) => verticalSpace(20),
      itemCount: posts.length,
    );
  }
}