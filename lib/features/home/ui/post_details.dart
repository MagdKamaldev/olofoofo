import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/home/logic/home_state.dart';
import 'package:circle_sync/features/home/ui/widgets/comment_item.dart';
import 'package:circle_sync/features/home/ui/widgets/post_item.dart';
import 'package:circle_sync/features/home/ui/widgets/post_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostDetails extends StatelessWidget {
  final String id;
  const PostDetails({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(getIt())..getPost(id),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Comments', style: TextStyles.font18Semibold),
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) =>
              current is PostLoading || current is PostLoaded || current is PostError,
          builder: (context, state) {
            if (state is PostLoading) {
              return const Center(child: PostShimmer());
            } else if (state is PostLoaded) {
              final post = state.post;
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: PostItem(
                      isDetail: true,
                      profileImage: post.author?.profileImg,
                      userName: "${post.author?.firstName} ${post.author?.lastName}",
                      postCaption: post.content ?? "Caption...",
                      likes: post.likesCount ?? 0,
                      comments: post.commentsCount ?? 0,
                      time: post.createdAt ?? DateTime.now().toString(),
                      isLiked: post.isLiked!,
                      postId: post.id!,
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final comment = post.comments?[index];
                        return CommentItem(
                          profileImage: comment?.user?.profileImg,
                          comment: comment?.content ?? "No comment",
                          time: comment?.createdAt ?? DateTime.now().toString(),
                          userName: "${comment?.user?.firstName ?? 'Unknown'} ${comment?.user?.lastName ?? ''}",
                        );
                      },
                      childCount: post.comments?.length ?? 0,
                    ),
                  ),
                ],
              );
            } else if (state is PostError) {
              return const Center(child: Text('Error loading post.'));
            } else {
              return const Center(child: Text('Loading...'));
            }
          },
        ),
      ),
    );
  }
}