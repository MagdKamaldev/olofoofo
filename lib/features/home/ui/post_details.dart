import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/home/logic/home_state.dart';
import 'package:circle_sync/features/home/ui/widgets/comment_item.dart';
import 'package:circle_sync/features/home/ui/widgets/post_item.dart';
import 'package:circle_sync/features/home/ui/widgets/post_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostDetails extends StatelessWidget {
  final String id;
  const PostDetails({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    TextEditingController commentController = TextEditingController();
    
    return BlocProvider(
      create: (context) => HomeCubit(getIt())..getPost(id),
      child: Scaffold(
        backgroundColor: Colors.white,
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
              
              return Column(
                children: [
                  // The scrollable content area
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(bottom: 80), // Extra padding for text field space
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PostItem(
                            isDetail: true,
                            profileImage: post.author?.profileImg,
                            userName: "${post.author?.firstName} ${post.author?.lastName}",
                            postCaption: post.content ?? "Caption...",
                            likes: post.likesCount ?? 0,
                            comments: post.commentsCount ?? 0,
                            time: post.createdAt ?? DateTime.now().toString(),
                            isLiked: post.isLiked ?? false,
                            postId: post.id!,
                          ),
                          ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: post.comments?.length ?? 0,
                            itemBuilder: (context, index) {
                              final comment = post.comments?[index];
                              return CommentItem(
                                profileImage: comment?.user?.first.profileImg,
                                comment: comment?.content ?? "No comment",
                                time: comment?.createdAt ?? DateTime.now().toString(),
                                userName: "${comment?.user?.first.firstName ?? 'Unknown'} ${comment?.user?.first.lastName ?? ''}",
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // The fixed comment input field at the bottom
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          child: AppTextField(
                            height: 80.h,
                            controller: commentController,
                            keyboardType: TextInputType.multiline,
                            isPassword: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Comment cannot be empty";
                              }
                              return null;
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (commentController.text.isNotEmpty) {
                              //TODO: Add comment request here
                              commentController.clear();
                            }
                          },
                          child: SvgPicture.asset("assets/images/Send.svg"),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(20)
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