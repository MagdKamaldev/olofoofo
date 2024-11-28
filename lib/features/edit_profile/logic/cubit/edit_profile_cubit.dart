import 'dart:io';

import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:circle_sync/features/edit_profile/data/repos/edit_profile_repo.dart';
import 'package:circle_sync/features/edit_profile/logic/cubit/edit_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final EditProfileRepo _editProfileRepo;
  EditProfileCubit(this._editProfileRepo)
      : super(const EditProfileState.initial());

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();


 File? selectedImage;

  Future<void> showImagePicker(BuildContext context) async {
    final ImagePicker picker = ImagePicker();

    // Show bottom sheet to choose between camera or gallery
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("Take Photo",style: TextStyles.font14regular,),
                onTap: () async {
                  Navigator.pop(context); // Close the bottom sheet
                  final XFile? cameraImage =
                      await picker.pickImage(source: ImageSource.camera);
                  if (cameraImage != null) {
                  
                      selectedImage = File(cameraImage.path);
                    emit(EditProfileState.imageSelected(selectedImage!));
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo),
                title: const Text("Choose from Gallery",style: TextStyles.font14regular,),
                onTap: () async {
                  Navigator.pop(context); // Close the bottom sheet
                  final XFile? galleryImage =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (galleryImage != null) {                  
                      selectedImage = File(galleryImage.path);
                    emit(EditProfileState.imageSelected(selectedImage!));
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void uploadProfileImage() async {
    emit(const EditProfileState.uploadProfileImageLoading());
    final response = await _editProfileRepo.uploadProfileImage(selectedImage!,);
    response.when(
      success: (response) {
        emit(const EditProfileState.uploadProfileImageLoaded());
      },
      failure: (apiErrorModel) {
        emit(EditProfileState.uploadProfileImageError(apiErrorModel));
      },
    );
  }

  void updateProfile() async {
    if (formKey.currentState!.validate()) {
      emit(const EditProfileState.updateProfileLoading());
      final response = await _editProfileRepo.updateProfile(
        firstNameController.text,
        lastNameController.text,
        bioController.text,
      );
      response.when(
        success: (response) {
          emit(const EditProfileState.updateProfileLoaded());
        },
        failure: (apiErrorModel) {
          emit(EditProfileState.updateProfileError(apiErrorModel));
        },
      );
    }
  }

}