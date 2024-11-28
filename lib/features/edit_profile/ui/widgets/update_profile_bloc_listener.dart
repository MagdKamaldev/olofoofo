import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/features/edit_profile/logic/cubit/edit_profile_cubit.dart';
import 'package:circle_sync/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class UpdateProfileBlocListener extends StatelessWidget {
  const UpdateProfileBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditProfileCubit, EditProfileState>(
      listenWhen: (previous, current) =>
          current is UpdateProfileLoading || current is UpdateProfileLoaded || current is UpdateProfileError,
      listener: (context, state) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          state.whenOrNull(
            updateProfileLoading: () {
              showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: ColorManager.primary,
                  ),
                ),
              );
            },
           updateProfileLoaded: () {
              Navigator.of(context).pop();
              context.pushReplacementNamed(Routes.home);
              

            },
            updateProfileError: (error) {
              _setupErrorState(context, error.message.toString());
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
        textAlign: TextAlign.center, 
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
