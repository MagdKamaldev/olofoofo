import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/core/widgets/tff.dart';
import 'package:circle_sync/features/edit_profile/logic/cubit/edit_profile_cubit.dart';
import 'package:circle_sync/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:circle_sync/features/edit_profile/ui/widgets/update_profile_bloc_listener.dart';
import 'package:circle_sync/features/edit_profile/ui/widgets/upload_profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class EditProfileScreen extends StatefulWidget {
  final String fistName;
  final String lastName;
  final String? profileImage;
  final String? bio;

  const EditProfileScreen({
    super.key,
    required this.fistName,
    required this.lastName,
    this.profileImage,
    this.bio,
  });

  @override
  EditProfileScreenState createState() => EditProfileScreenState();
}


class EditProfileScreenState extends State<EditProfileScreen> {

  @override
  void initState() {
    context.read<EditProfileCubit>().firstNameController.text = widget.fistName;
    context.read<EditProfileCubit>().lastNameController.text = widget.lastName;
    context.read<EditProfileCubit>().bioController.text = widget.bio ?? "";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    EditProfileCubit cubit = context.read<EditProfileCubit>();
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "My Profile",
              style: TextStyles.font18Semibold,
            ),
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: cubit.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(size.height * 0.02),
                     UploadProfilePicture(cubit: cubit, profileImage: widget.profileImage),
                      verticalSpace(size.height * 0.05),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "First Name",
                                style: TextStyles.font14Medium
                                    .copyWith(color: Colors.black54),
                              ),
                              verticalSpace(20),
                              AppTextField(
                                width: size.width * 0.42,
                                controller: cubit.firstNameController,
                                keyboardType: TextInputType.text,
                                isPassword: false,
                                validator: (value) {
                                  if (cubit.firstNameController.text.isEmpty) {
                                    return "First name cannot be empty";
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                          horizontalSpace(size.width * 0.05),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Last Name",
                                style: TextStyles.font14Medium
                                    .copyWith(color: Colors.black54),
                              ),
                              verticalSpace(20),
                              AppTextField(
                                width: size.width * 0.42,
                                controller: cubit.lastNameController,
                                keyboardType: TextInputType.text,
                                isPassword: false,
                                validator: (value) {
                                  if (cubit.lastNameController.text.isEmpty) {
                                    return "Last name cannot be empty";
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      verticalSpace(size.height * 0.04),
                      Text(
                        "Bio",
                        style:
                            TextStyles.font14Medium.copyWith(color: Colors.black54),
                      ),
                      verticalSpace(20),
                      AppTextField(
                        controller: cubit.bioController,
                        keyboardType: TextInputType.text,
                        isPassword: false,
                        validator: (value) {
                          if (cubit.bioController.text.isEmpty) {
                            return "Bio cannot be empty";
                          }
                          return null;
                        },
                      ),
                      verticalSpace(size.height * 0.08),
                      AppButton(
                        onPressed: () {
                          cubit.updateProfile();
                        },
                        text: 'Update',
                        isWhite: false,
                      ),
                      const UpdateProfileBlocListener(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
