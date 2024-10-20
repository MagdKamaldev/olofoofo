import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:circle_sync/features/signup/logic/cubit/sign_up_cubit.dart';
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                //  const Logo(),
                  const Text(
                    "Sign Up",
                  //  style: TextStyles.heading2,
                  ),
                  verticalSpace(30),
                  AppTextField(
                    isPassword: false,
                    controller: signUpCubit.firstNameController,
                 //   hintText: "First Name",
                    keyboardType: TextInputType.text,
                  ),
                  verticalSpace(20),
                  AppTextField(
                    isPassword: false,
                    controller: signUpCubit.lastNameController,
                  //  hintText: "Last Name",
                    keyboardType: TextInputType.text,
                  ),
                  verticalSpace(20),
                  AppTextField(
                    isPassword: false,
                    controller: signUpCubit.mailController,
                //    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  verticalSpace(20),
                  AppTextField(
                    isPassword: true,
                    controller: signUpCubit.passwordController,
                  //  hintText: "Password",
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  verticalSpace(size.height * 0.1),
                  AppButton(
                    isWhite: false,
                      onPressed: () {
                        validateAndSignUp(context);
                      },
                      text: "Sign Up"),
                  verticalSpace(20),
                  const Text(
                    "Already have an account?",
                   // style: TextStyles.body,
                  ),
                  verticalSpace(10),
                  TextButton(
                    child: Text(
                      "Sign In",
                    //  style: TextStyles.body.copyWith(
                      //  color: ColorManager.primary,
                    //  ),
                    ),
                    onPressed: () {
                      context.pushNamed(Routes.login);
                    },
                  ),
                  const SignUpBlocListener(),
                ],
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
