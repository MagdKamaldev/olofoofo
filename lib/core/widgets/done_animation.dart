import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void showDoneDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: SizedBox(
          width: 150, 
          height: 150,
          child: Lottie.asset(
            "assets/animations/Animation - 1730134242742.json",
            fit: BoxFit.contain,
          ),
        ),
      );
    },
  );
}