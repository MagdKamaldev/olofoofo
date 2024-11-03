import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/done_animation.dart';
import 'package:circle_sync/features/add_post/logic/cubit/add_post_cubit.dart';
import 'package:circle_sync/features/add_post/logic/cubit/add_post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routing/routes.dart';

class AddPostBlocListener extends StatelessWidget {
  const AddPostBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddPostCubit, AddPostState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          state.whenOrNull(
            loading: () {
              showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: ColorManager.primary,
                  ),
                ),
              );
            },
          success: (addPostResponse) {
            Navigator.pop(context);
          showDoneDialog(context);
          Future.delayed(const Duration(seconds: 3), () {
             // ignore: use_build_context_synchronously
             context.pushReplacementNamed(Routes.home);
          });
            },
            failure: (error) {
              _setupErrorState(context, error.message!);
            },
          );
        });
      },
      child: const SizedBox.shrink(),
    );
  }

  void _setupErrorState(BuildContext context, String error) {
  Navigator.of(context).pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        textAlign: TextAlign.center,  // Center the error text
        style: TextStyles.font14Medium.copyWith(color: Colors.red),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Got it',
            style: TextStyles.font14Medium.copyWith(color: ColorManager.primary),
          ),
        ),
      ],
    ),
  );
}
}