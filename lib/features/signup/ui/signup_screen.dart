import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:circle_sync/features/signup/ui/fields.dart';
import 'package:circle_sync/features/signup/ui/sign_up_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final signUpCubit = context.read<SignUpCubit>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: size.width,
            child: Form(
              key: signUpCubit.formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   
                    const Text(
                      "Sign Up",
                      style: TextStyles.font20SemiBold,
                    ),
                    verticalSpace(15),
                    Text(
                      "Enter your credentials",
                      style:
                          TextStyles.font16Medium.copyWith(color: Colors.black54),
                    ),
                  verticalSpace(size.height * 0.04),
                   const Fields(),
                    AppButton(
                      isWhite: false,
                        onPressed: () {
                          validateAndSignUp(context);
                        },
                        text: "Sign Up"),
                    verticalSpace(size.height * 0.02),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyles.font14Medium,
                      ),
                      TextButton(
                        child: Text(
                          "Sign In",
                          style: TextStyles.font14Medium.copyWith(
                              color: ColorManager.primary, ),
                        ),
                        onPressed: () {
                          context.pushNamed(Routes.login);
                        },
                      ),
                    ],
                  ),
                  const SignUpBlocListener(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateAndSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}
