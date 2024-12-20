// ignore_for_file: depend_on_referenced_packages
import 'package:circle_sync/core/networks/api_error_model.dart';
import 'package:circle_sync/features/profile/data/models/profile_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_state.freezed.dart';

@freezed
 class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.getProfileLoading() = GetProfileLoading;
  const factory ProfileState.getProfileSuccess(ProfileResponseModel data) = GetProfileSuccess;
  const factory ProfileState.getProfilefailure(ApiErrorModel apiErrorModel) = GetProfileError;
 }
