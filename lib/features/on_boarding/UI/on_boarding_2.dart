import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/ONBOARDING2.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.48,
                  ),
                  const Text(
                    "Make new friends with ease",
                    style: TextStyles.font20SemiBold,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Text(
                    "Allowing you to make new Friends is our Number one priority.....",
                    style:
                        TextStyles.font16Medium.copyWith(color: Colors.black54),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  AppButton(
                    onPressed: () {
                      context.pushNamed(Routes.onBoarding3);
                    },
                    text: "Next",
                    isWhite: false,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  AppButton(
                    onPressed: () {
                       context.pushNamed(Routes.login);
                    },
                    text: "Skip",
                    isWhite: true,
                  ),
                   SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    const Text("Already have an account?",style: TextStyles.font14Medium,),
                    const SizedBox(width: 10,),
                    GestureDetector(onTap: (){
                       context.pushNamed(Routes.login);
                    },child: Text("Sign In",style: TextStyles.font14Medium.copyWith(color: Colors.black45),))
                  ],)
                ],
              ),
            )
          ],
        )));
  }
}
