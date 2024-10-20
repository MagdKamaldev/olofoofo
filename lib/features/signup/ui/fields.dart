import 'package:circle_sync/core/helpers/app_regex.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:circle_sync/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:circle_sync/features/signup/ui/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Fields extends StatefulWidget {
  const Fields({super.key});

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {

   bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

   void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final signUpCubit = context.read<SignUpCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "First Name",
          style: TextStyles.font14Medium,
        ),
        verticalSpace(10),
        AppTextField(
          isPassword: false,
          controller: signUpCubit.firstNameController,
          //   hintText: "First Name",
          keyboardType: TextInputType.text,
        ),
        verticalSpace(20),
        const Text(
          "Last Name",
          style: TextStyles.font14Medium,
        ),
        verticalSpace(10),
        AppTextField(
          isPassword: false,
          controller: signUpCubit.lastNameController,
          //  hintText: "Last Name",
          keyboardType: TextInputType.text,
        ),
        verticalSpace(20),
        const Text(
          "Email",
          style: TextStyles.font14Medium,
        ),
        verticalSpace(10),
        AppTextField(
          isPassword: false,
          controller: signUpCubit.mailController,
          keyboardType: TextInputType.emailAddress,
        ),
        verticalSpace(20),
        const Text(
          "Password",
          style: TextStyles.font14Medium,
        ),
        verticalSpace(10),
        AppTextField(
          isPassword: true,
          controller: signUpCubit.passwordController,
          //  hintText: "Password",
          keyboardType: TextInputType.visiblePassword,
        ),
        verticalSpace(size.height * 0.04),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasDigits: hasNumber,
            hasMinimumLength: hasMinLength,
          ),
          verticalSpace(size.height * 0.04),
      ],
    );
  }

   @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
