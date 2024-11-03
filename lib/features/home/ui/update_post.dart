import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/features/add_post/logic/cubit/add_post_cubit.dart';
import 'package:circle_sync/features/add_post/ui/widgets/create_post_bloc_listener.dart';
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/home/logic/home_state.dart';
import 'package:circle_sync/features/home/ui/widgets/update_post_caption.dart';
import 'package:circle_sync/features/home/ui/widgets/update_post_select_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdatePostScreen extends StatelessWidget {
  final String postId;
  final String caption;
  const UpdatePostScreen(
      {super.key, required this.postId, required this.caption});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => AddPostCubit(getIt()),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text(
              'Update Post',
              style: TextStyles.font16Medium,
            ),
          ),
          body: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: context.read<HomeCubit>().updatePostFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(size.height * 0.03),
                        const UpdateSelectImage(),
                        verticalSpace(size.height * 0.03),
                        UpdateCaption(
                          text: caption,
                        ),
                        verticalSpace(size.height * 0.08),
                        if (state is! UpdatePostLoading)
                          AppButton(
                              onPressed: () {
                                if (context
                                    .read<HomeCubit>()
                                    .updatePostFormKey
                                    .currentState!
                                    .validate()) {
                                  context.read<HomeCubit>().updatePost(
                                      postId,
                                      context
                                          .read<HomeCubit>()
                                          .updatePostController
                                          .text,
                                      context);
                                }
                              },
                              text: "Upload",
                              isWhite: false),
                        if (state is UpdatePostLoading)
                          const Center(child: CircularProgressIndicator(color: ColorManager.primary,)),
                        const AddPostBlocListener(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
