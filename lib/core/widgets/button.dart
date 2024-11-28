import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final bool isWhite;
  final double ? width;
  
  const AppButton({
    super.key, 
    required this.onPressed, 
    required this.text, 
    required this.isWhite, this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: 49,
      decoration: ShapeDecoration(
        color: isWhite ? Colors.white : ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: isWhite 
              ? const BorderSide(color: Colors.black, width: 1) // Add black border if isWhite is true
              : BorderSide.none, // No border if isWhite is false
        ),
      ),
      child: TextButton(
        onPressed: onPressed, // Assign the function as a callback
        child: Text(
          text,
          style: TextStyles.font18Semibold.copyWith(
            color: isWhite ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}