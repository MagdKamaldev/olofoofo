import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/ONBOARDING3.png"),
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
                    "Express yourself to the world",
                    style: TextStyles.font20SemiBold,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Text(
                    "Let your voice be heard on the internet through the OFOFO features on the App without restrictions",
                    style:
                        TextStyles.font16Medium.copyWith(color: Colors.black54),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  AppButton(
                    onPressed: () {
                      context.pushNamed(Routes.signUp);
                    },
                    text: "Continue",
                    isWhite: false,
                  ),
                 
                   SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
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
