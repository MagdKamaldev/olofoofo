import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/features/add_post/ui/widgets/caption.dart';
import 'package:circle_sync/features/add_post/ui/widgets/select_image.dart';
import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Text(
                  'Post',
                  style: TextStyles.font16Medium,
                )),
                verticalSpace(size.height*0.03),
                const SelectImage(),
                verticalSpace(size.height*0.03),
                const Caption(),
                verticalSpace(size.height*0.08),
                AppButton(onPressed: (){
                
                }, text: "Upload", isWhite: false)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
