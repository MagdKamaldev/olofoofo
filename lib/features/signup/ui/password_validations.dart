import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasDigits;
  final bool hasSpecialCharacters;
  final bool hasMinimumLength;
  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasDigits,
      required this.hasSpecialCharacters,
      required this.hasMinimumLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least one lowercase letter", hasLowerCase),
        verticalSpace(2),
         buildValidationRow("At least one uppercase letter", hasUpperCase),
        verticalSpace(2),
         buildValidationRow("At least one special character", hasSpecialCharacters),
        verticalSpace(2),
         buildValidationRow("At least one number", hasDigits),
        verticalSpace(2),
         buildValidationRow("At least eight characters long", hasMinimumLength),
        verticalSpace(2),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: Colors.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font14Medium.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.black54,
              decorationThickness: 2,
              color: hasValidated? Colors.grey: ColorManager.primary,
              ),
        )
      ],
    );
  }
}
