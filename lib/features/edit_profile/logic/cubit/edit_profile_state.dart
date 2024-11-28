// ignore_for_file: depend_on_referenced_packages
import 'dart:io';
import 'package:circle_sync/core/networks/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_profile_state.freezed.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = _Initial;
  //add image from gallery 
  const factory EditProfileState.imageSelected(File image) = ImageSelected;
  //upload profile image
  const factory EditProfileState.uploadProfileImageLoading() = UploadProfileImageLoading;
  const factory EditProfileState.uploadProfileImageLoaded() = UploadProfileImageLoaded;
  const factory EditProfileState.uploadProfileImageError(ApiErrorModel error) = UploadProfileImageError;
  //update profile
  const factory EditProfileState.updateProfileLoading() = UpdateProfileLoading;
  const factory EditProfileState.updateProfileLoaded() = UpdateProfileLoaded;
  const factory EditProfileState.updateProfileError(ApiErrorModel error) = UpdateProfileError;
}
