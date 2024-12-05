import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/constants.dart';
import 'package:circle_sync/core/helpers/shared_pref_helper.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:circle_sync/features/home/data/models/home_responses.dart';
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/home/logic/home_state.dart';
import 'package:circle_sync/features/home/ui/widgets/comment_item.dart';
import 'package:circle_sync/features/home/ui/widgets/local_comment_item.dart';
import 'package:circle_sync/features/home/ui/widgets/post_item.dart';
import 'package:circle_sync/features/home/ui/widgets/post_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostDetails extends StatefulWidget {
  final String id;
  const PostDetails({super.key, required this.id});

  @override
  PostDetailsState createState() => PostDetailsState();
}

class PostDetailsState extends State<PostDetails> {
  late TextEditingController commentController;
  List<Comment> comments = [];
  List<Comment> localComments = [];
  String firstName = "";
  String lastName = "";
  String image = "";
  String myId = "";

  
  void getUserValues() async {
    myId = await SharedPrefHelper.getString(
      SharedPrefKeys.userId,
    );
    firstName = await SharedPrefHelper.getString(
      SharedPrefKeys.firstName,
    );
    lastName = await SharedPrefHelper.getString(
      SharedPrefKeys.lastName,
    );
    image = await SharedPrefHelper.getString(
      SharedPrefKeys.userProfileImage,
    );
  }

  @override
  void initState() {
    super.initState();
    getUserValues();
    commentController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(getIt())..getPost(widget.id),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Comments', style: TextStyles.font18Semibold),
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) =>
              current is PostLoading ||
              current is PostLoaded ||
              current is PostError || 
              current is CommentSuccess || 
              current is CommentError || 
              current is CommentLoading || 
              current is LocalCommentAdded || 
              current is DeleteCommentSuccess || 
              current is DeleteCommentError || 
              current is DeleteCommentLoading,
          builder: (context, state) {
            if (state is PostLoading) {
              return const Center(child: PostShimmer());
            } else  {
              final post = context.read<HomeCubit>().post!;
              // Update the local comments list
              comments = context.read<HomeCubit>().comments;
              localComments = context.read<HomeCubit>().localComments;
              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(
                          bottom: 80),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PostItem(
                            images: post.media??[],
                            postUserId: post.author?.id?? "",
                            isDetail: true,
                            profileImage: post.author?.profileImg,
                            userName:
                                "${post.author?.firstName} ${post.author?.lastName}",
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
                            itemCount: comments.length,
                            itemBuilder: (context, index) {            
                              final comment = comments[index];
                              return CommentItem(
                                postAuthorId: post.author?.id ?? "",
                                myId: myId,
                                commentUserId: comment.userId?? comment.user?.first.id ?? "",
                                postId: post.id ?? "",
                                commentId: comment.id ?? "",
                                profileImage: comment.user?.first.profileImg,
                                comment: comment.content ?? "No comment",
                                time: comment.createdAt ??
                                    DateTime.now().toString(),
                                userName:
                                    "${comment.user?.first.firstName ?? 'Unknown'} ${comment.user?.first.lastName ?? ''}",
                                onCommentDeleted: () {
                                  // Remove the comment from the local list
                                  setState(() {
                                    comments.removeAt(index);
                                  });
                                },
                              );
                            },
                          ),
                           ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: localComments.length,
                            itemBuilder: (context, index) {
                              final comment = localComments[index];
                              return LocalCommentItem(
                                profileImage: comment.user?.first.profileImg,
                                comment: comment.content ?? "No comment",
                                time: comment.createdAt ??
                                    DateTime.now().toString(),
                                userName:
                                    "${comment.user?.first.firstName ?? 'Unknown'} ${comment.user?.first.lastName ?? ''}",
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
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
                              context
                                  .read<HomeCubit>()
                                  .comment(widget.id, Comment(
                                    user: [
                                      UserData(
                                      id: myId,
                                      firstName: firstName,
                                      lastName: lastName,
                                      profileImg: image,
                                    )],
                                    content: commentController.text,
                                    
                                  ),
                                  firstName,lastName,image,myId);
                              commentController.text = "";
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
            } 
          },
        ),
      ),
    );
  }
}
