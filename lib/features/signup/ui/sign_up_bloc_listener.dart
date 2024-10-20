import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:circle_sync/features/signup/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
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
            success: (signUpResponse) {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed(Routes.home);
            },
            failure: (error) {
              _setupErrorState(context, error);
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
       //   style: TextStyles.heading2,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Got it',
          //    style: TextStyles.heading2,
            ),
          ),
        ],
      ),
    );
  }
}
