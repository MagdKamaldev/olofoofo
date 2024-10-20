import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/features/login/logic/cubit/login_cubit.dart';
import 'package:circle_sync/features/login/ui/email_and_password.dart';
import 'package:circle_sync/features/login/ui/login_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(40),
                  const Text(
                    "Sign In",
                    style: TextStyles.font20SemiBold,
                  ),
                  verticalSpace(20),
                  Text(
                    "Enter your credentials",
                    style:
                        TextStyles.font16Medium.copyWith(color: Colors.black54),
                  ),
                  verticalSpace(40),
                  const EmailAndPassword(),
                   verticalSpace(10),
                    Align(
                      alignment: Alignment.centerRight,
                      child:  TextButton(
                        onPressed: (){},
                        child: Text(
                      "Forgot Password?",
                      style: TextStyles.font14Medium.copyWith(color: ColorManager.primary,),
                                        ),
                    ),),
                  verticalSpace(size.height * 0.15),
                  AppButton(
                    onPressed: () {
                      validateAndLogin(context);
                    },
                    text: "Done",
                    isWhite: false,
                  ),
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyles.font14Medium,
                      ),
                      TextButton(
                        child: Text(
                          "Sign Up",
                          style: TextStyles.font14Medium.copyWith(
                              color: ColorManager.primary, ),
                        ),
                        onPressed: () {
                          context.pushNamed(Routes.signUp);
                        },
                      ),
                    ],
                  ),
                  const LoginBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateAndLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
