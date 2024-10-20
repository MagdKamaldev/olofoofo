import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/WELCOME.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   SizedBox(
                    height: MediaQuery.of(context).size.height * 0.48,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome",
                      style: TextStyles.font20SemiBold,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  AppButton(onPressed: (){
                    context.pushReplacementNamed(Routes.home);
                  }, text: "Continue", isWhite: false)
                ],
              ),
            )
          ],
        )));
  }
}