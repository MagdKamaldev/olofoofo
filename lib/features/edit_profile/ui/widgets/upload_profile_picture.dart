import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/widgets/button.dart';
import 'package:circle_sync/features/edit_profile/logic/cubit/edit_profile_cubit.dart';
import 'package:circle_sync/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:circle_sync/features/edit_profile/ui/widgets/upload_prfolie_picture_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UploadProfilePicture extends StatelessWidget {
  final String? profileImage;
  final EditProfileCubit cubit;

  const UploadProfilePicture({
    super.key,
    this.profileImage,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<EditProfileCubit, EditProfileState>(
      bloc: cubit,
      builder: (context, state) {
        bool isLoading = state is UploadProfileImageLoading;
        bool isUploaded = state is UploadProfileImageLoaded;

        return Row(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CircleAvatar(
                  radius: 40.sp,
                  backgroundImage: cubit.selectedImage != null
                      ? FileImage(cubit.selectedImage!)
                      : NetworkImage(profileImage ??
                              "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg")
                          as ImageProvider,
                ),
                Positioned(
                  bottom: -15.h,
                  right: -10.w,
                  child: IconButton(
                    onPressed: () {
                      cubit.showImagePicker(context);
                    },
                    icon: const Icon(Icons.camera_alt),
                  ),
                ),
              ],
            ),
            horizontalSpace(size.width * 0.04),
            if (cubit.selectedImage != null && !isLoading && !isUploaded)
              AppButton(
                onPressed: () {
                  cubit.uploadProfileImage();
                },
                text: "Upload",
                isWhite: false,
                width: size.width * 0.3,
              ),
            const UploadProfilePictureBlocListener(),
          ],
        );
      },
    );
  }
}
