import 'package:circle_sync/core/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/tff.dart'; // Assuming AppTextField is from here
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/home/logic/home_state.dart';

class UpdateCommentScreen extends StatefulWidget {
  final String commentId;
  final String postId;
  final String content;
  final HomeCubit cubit;

  const UpdateCommentScreen({
    super.key,
    required this.commentId,
    required this.postId,
    required this.content,
    required this.cubit,
  });

  @override
  UpdateCommentScreenState createState() => UpdateCommentScreenState();
}

class UpdateCommentScreenState extends State<UpdateCommentScreen> {

  @override
  void initState() {
    super.initState();
    // Initialize the controller with the existing comment content
    widget.cubit.updateCommentController = TextEditingController(text: widget.content);
  }

  @override
  void dispose() {
    widget.cubit.updateCommentController.dispose();
    super.dispose();
  }

  void _updateComment(BuildContext context) {
    if (widget.cubit.updateCommentController.text.isNotEmpty) {
      // Pass the updated comment content and other required details to the cubit
      context.read<HomeCubit>().updateComment(
            widget.postId,
            widget.commentId,
            widget.cubit.updateCommentController.text,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Comment',
          style: TextStyles.font18Semibold,
        ),
      ),
      body: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is UpdateCommentSuccess) {
            Navigator.pop(context); 
            Navigator.pop(context); 
          }
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [              
                AppTextField(
                  height: size.height * 0.3,
                  controller: widget.cubit.updateCommentController,
                  keyboardType: TextInputType.multiline,
                  isPassword: false,
                  // maxLines: 5, // Allow multi-line text input
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Comment cannot be empty";
                    }
                    return null;
                  },
                ),
                const Spacer(),
                AppButton(
                    onPressed: () {
                      _updateComment(
                        context,
                      );
                    },
                    text: "Update",
                    isWhite: false)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
