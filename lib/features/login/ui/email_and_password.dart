import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:circle_sync/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatelessWidget {
  const EmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();

    return Form(
      key: loginCubit.formKey,
      child: Column(
        children: [
          AppTextField(
            isPassword: false,
            controller: loginCubit.mailController,
            hintText: "Enter your email address",
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(35),
          AppTextField(
            isPassword: true,
            controller: loginCubit.passwordController,
            hintText: "Enter your password",
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
