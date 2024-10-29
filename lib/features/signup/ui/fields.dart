import 'package:circle_sync/core/helpers/app_regex.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:circle_sync/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:circle_sync/features/signup/ui/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Fields extends StatefulWidget {
  final Function(bool) onValidationChanged;
  const Fields({super.key, required this.onValidationChanged});

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
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);

        // Notify parent widget if password is valid or not
        widget.onValidationChanged(hasLowercase && hasUppercase && hasSpecialCharacters && hasNumber && hasMinLength);
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
          validator: (p0) {
            if (p0 == null || p0.isEmpty) {
              return "First name is required";
            }
            return null;
          },
          isPassword: false,
          controller: signUpCubit.firstNameController,
          keyboardType: TextInputType.text,
        ),
        verticalSpace(20),
        const Text(
          "Last Name",
          style: TextStyles.font14Medium,
        ),
        verticalSpace(10),
        AppTextField(
          validator: (p0) {
            if (p0 == null || p0.isEmpty) {
              return "Last name is required";
            }
            return null;
          },
          isPassword: false,
          controller: signUpCubit.lastNameController,
          keyboardType: TextInputType.text,
        ),
        verticalSpace(20),
        const Text(
          "Email",
          style: TextStyles.font14Medium,
        ),
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
          validator: (p0) {
            if (p0 == null || p0.isEmpty) {
              return "Password is required";
            }
            if (!hasLowercase) {
              return "Password must contain at least one lowercase letter";
            }
            if (!hasUppercase) {
              return "Password must contain at least one uppercase letter";
            }
            if (!hasSpecialCharacters) {
              return "Password must contain at least one special character";
            }
            if (!hasNumber) {
              return "Password must contain at least one number";
            }
            if (!hasMinLength) {
              return "Password must be at least eight characters long";
            }
            return null;
          },
          isPassword: true,
          controller: signUpCubit.passwordController,
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