import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/colors/colors.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/features/add_post/logic/cubit/add_post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io';

class SelectImage extends StatelessWidget {
  const SelectImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
          child: BlocBuilder<AddPostCubit, dynamic>(
            builder: (context, state) {
              final selectedImages =
                  context.read<AddPostCubit>().selectedImages;

              return Stack(
                children: [
                  if (selectedImages.length < 2)
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon:
                            Container(
                    decoration: BoxDecoration(
                      color: ColorManager.textFieldBackGround,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: ColorManager.primary, width: 2),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: ColorManager.primary,
                    )),
                        onPressed: () {
                          if (selectedImages.length < 2) {
                            context
                                .read<AddPostCubit>()
                                .showImagePicker(context);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "You can only select 2 images",
                                  style: TextStyles.font14regular
                                      .copyWith(color: Colors.red),
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  if (selectedImages.isNotEmpty)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: selectedImages.map((image) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            vertical:size.height * 0.015,
                           ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                              Image.file(
                                image,
                                width: 120.w,
                                fit: BoxFit.cover,
                              ),
                              IconButton(
                                  onPressed: () {
                                    context
                                        .read<AddPostCubit>()
                                        .removeImgage(selectedImages.indexOf(image));
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.red,
                                    size: 25.sp,
                                  )),
                            ]),
                          ),
                        );
                      }).toList(),
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
