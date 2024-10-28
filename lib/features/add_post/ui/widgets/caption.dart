import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:flutter/material.dart';

class Caption extends StatelessWidget {
  const Caption({super.key});

  @override
  Widget build(BuildContext context) {
     TextEditingController captionController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Add caption", style: TextStyles.font14Medium,),
              verticalSpace(10),
              AppTextField(
                height: 140,
                controller: captionController,
                keyboardType: TextInputType.text,
                isPassword: false,
                validator: (value) {},
              )
      ],
    );
  }
}