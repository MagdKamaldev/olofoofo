import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateCaption extends StatefulWidget {
  final String text;
  const UpdateCaption({super.key, required this.text});

  @override
  State<UpdateCaption> createState() => _UpdateCaptionState();
}

class _UpdateCaptionState extends State<UpdateCaption> {
  @override
  void initState() {
    context.read<HomeCubit>().updatePostController.text = widget.text;
    super.initState();
  }

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
          controller: context.read<HomeCubit>().updatePostController,
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
