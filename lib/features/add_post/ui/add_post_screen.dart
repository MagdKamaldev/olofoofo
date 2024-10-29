import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/features/add_post/logic/cubit/add_post_cubit.dart';
import 'package:circle_sync/features/add_post/logic/cubit/add_post_state.dart';
import 'package:circle_sync/features/add_post/ui/widgets/caption.dart';
import 'package:circle_sync/features/add_post/ui/widgets/create_post_bloc_listener.dart';
import 'package:circle_sync/features/add_post/ui/widgets/select_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => AddPostCubit(getIt()),
      child: BlocBuilder<AddPostCubit, AddPostState>(
        builder: (context,state)=> SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: context.read<AddPostCubit>().formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                          child: Text(
                        'Post',
                        style: TextStyles.font16Medium,
                      )),
                      verticalSpace(size.height * 0.03),
                      const SelectImage(),
                      verticalSpace(size.height * 0.03),
                      const Caption(),
                      verticalSpace(size.height * 0.08),
                      AppButton(
                          onPressed: () {
                            if(context.read<AddPostCubit>().formKey.currentState!.validate()){
                              context.read<AddPostCubit>().emitAddPostStates();
                            }        
                          },
                          text: "Upload",
                          isWhite: false),
                      const AddPostBlocListener(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
