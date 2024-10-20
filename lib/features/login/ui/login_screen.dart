import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/core/widgets/logo.dart';
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(40),
                const Logo(),
                verticalSpace(40),
                const Text(
                  "Sign In",
              //    style: TextStyles.heading2,
                ),
                verticalSpace(40),
                const EmailAndPassword(),
                verticalSpace(size.height * 0.1),
                AppButton(
                    onPressed: () {
                      validateAndLogin(context);
                    },
                    text: "Sign In", isWhite: true,),
                verticalSpace(30),
                const Text(
                  "Don't have an account?",
               //   style: TextStyles.body,
                ),
                verticalSpace(10),
                TextButton(
                  child: Text("Sign Up",
                   //   style: TextStyles.body.copyWith(
                 //       color: ColorManager.primary,
                  //    )
                  ),
                  onPressed: () {
                    context.pushNamed(Routes.signUp);
                  },
                ),
                const LoginBlocListener(),
              ],
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
