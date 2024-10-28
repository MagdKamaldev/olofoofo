import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectImage extends StatelessWidget {
  const SelectImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Select Image(s)",
          style: TextStyles.font14Medium,
        ),
        verticalSpace(10),
        Container(
          width: double.infinity,
          height: 145.h,
          decoration: BoxDecoration(
            color: ColorManager.textFieldBackGround,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorManager.primary),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
                onPressed: () {},
                icon: Container(
                    decoration: BoxDecoration(
                      color: ColorManager.textFieldBackGround,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: ColorManager.primary, width: 2),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: ColorManager.primary,
                    ))),
          ),
        ),
      ],
    );
  }
}
