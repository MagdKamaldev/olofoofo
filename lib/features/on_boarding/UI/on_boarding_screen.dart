import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/ONBOARDING1.png"),
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
                    "Connect with Friends and Family",
                    style: TextStyles.font20SemiBold,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Text(
                    "Connecting with Family and Friends provides a sense of belonging and security ",
                    style:
                        TextStyles.font16Medium.copyWith(color: Colors.black54),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  AppButton(
                    onPressed: () {},
                    text: "Next",
                    isWhite: false,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  AppButton(
                    onPressed: () {},
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
                    Text("Sign In",style: TextStyles.font14Medium.copyWith(color: Colors.black45),)
                  ],)
                ],
              ),
            )
          ],
        )));
  }
}
