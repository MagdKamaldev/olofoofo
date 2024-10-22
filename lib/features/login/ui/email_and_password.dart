import 'package:circle_sync/core/helpers/app_regex.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Email",style: TextStyles.font14Medium,),
          verticalSpace(10),
          AppTextField(
             validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            isPassword: false,
            controller: loginCubit.mailController,
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(20),
          const Text("Password",style: TextStyles.font14Medium,),
          verticalSpace(10),
          AppTextField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required';
              }
            },
            isPassword: true,
            controller: loginCubit.passwordController,
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
