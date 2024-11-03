import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:circle_sync/features/add_post/logic/cubit/add_post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Caption extends StatelessWidget {
  const Caption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Add caption",
          style: TextStyles.font14Medium,
        ),
        verticalSpace(10),
        AppTextField(
          height: 140,
          controller: context.read<AddPostCubit>().captionController,
          keyboardType: TextInputType.text,
          isPassword: false,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a caption';
            }
          },
        )
      ],
    );
  }
}
