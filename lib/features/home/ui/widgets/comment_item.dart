import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/helpers/time_ago.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/features/home/data/repos/home_repo.dart';
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/home/logic/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentItem extends StatefulWidget {
  final String myId;
  final String postAuthorId;
  final String commentUserId;
  final String commentId;
  final String postId;
  final String? profileImage;
  final String comment;
  final String time;
  final String userName;
  final VoidCallback onCommentDeleted;

  const CommentItem({
    super.key,
    required this.profileImage,
    required this.comment,
    required this.time,
    required this.userName,
    required this.commentId,
    required this.postId,
    required this.onCommentDeleted,
    required this.commentUserId,
    required this.myId,
    required this.postAuthorId,
  });

  @override
  CommentItemState createState() => CommentItemState();
}

class CommentItemState extends State<CommentItem> {
  bool _isExpanded =
      false; // State variable to manage the expansion of the comment

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
                  widget.profileImage == null || widget.profileImage == ""
                      ? "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg"
                      : widget.profileImage!,
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
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isExpanded = !_isExpanded; // Toggle expansion
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
                                        if (!(_isExpanded) &&
                                            widget.comment.length > 100)
                                          const TextSpan(
                                            text: '... See More',
                                            style: TextStyles.font12Medium,
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
                        ),
                        horizontalSpace(10),
                        if (widget.commentUserId == widget.myId ||
                            widget.myId == widget.postAuthorId)
                          PopupMenuButton<String>(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(color: Colors.black),
                            ),
                            onSelected: (value) {
                              if (value == 'edit') {
                                // Handle Edit Comment
                                _editComment(context,
                                    widget.postId,
                                     widget.commentId,
                                     widget.comment,
                                     context.read<HomeCubit>());
                              } else if (value == 'delete') {
                                // Handle Delete Comment
                                _deleteComment(context);
                              }
                            },
                            itemBuilder: (BuildContext context) {
                              return <PopupMenuEntry<String>>[
                                if (widget.commentUserId == widget.myId)
                                  const PopupMenuItem<String>(
                                    value: 'edit',
                                    child: Row(
                                      children: [
                                        Text(
                                          'Edit Comment',
                                          style: TextStyles.font16Medium,
                                        ),
                                      ],
                                    ),
                                  ),
                                if (widget.commentUserId == widget.myId)
                                  const PopupMenuDivider(height: 5),
                                const PopupMenuItem<String>(
                                  value: 'delete',
                                  child: Row(
                                    children: [
                                      Text(
                                        'Delete Comment',
                                        style: TextStyles.font16Medium,
                                      ),
                                    ],
                                  ),
                                ),
                              ];
                            },
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.black54,
                            ),
                          )
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

  void _editComment(
      BuildContext context, String postId, String commentId, String comment, HomeCubit cubit) {
    context.pushNamed(
      Routes.updateComment,
      arguments: {
        'postId': postId,
        'commentId': commentId,
        'content': comment,
        "cubit":cubit,
      },
    );
  }

  // Handle Delete Comment
  void _deleteComment(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlocProvider(
          create: (context) => HomeCubit(getIt<HomeRepo>()),
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return AlertDialog(
                title: const Text(
                  "Delete Comment",
                  style: TextStyles.font18Semibold,
                ),
                content: const Text(
                  "Are you sure you want to delete this comment?",
                  style: TextStyles.font14Medium,
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text(
                      'Cancel',
                      style: TextStyles.font14Medium,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                      child: Text(
                        'Delete',
                        style:
                            TextStyles.font14Medium.copyWith(color: Colors.red),
                      ),
                      onPressed: () async {
                        Navigator.of(context).pop();
                        try {
                          context
                              .read<HomeCubit>()
                              .deleteComment(widget.postId, widget.commentId);
                          widget.onCommentDeleted();
                        } catch (error) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Failed to delete comment: $error'),
                            ),
                          );
                        }
                      }),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
