import 'package:circle_sync/core/networks/api_error_model.dart';
import 'package:circle_sync/features/user_porifle/data/models/user_profile_response_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.userProfileLoading() = UserProfileLoading;
  const factory UserProfileState.userProfileLoaded(UserProfileResponseModel userProfileResponseModel) = UserProfileLoaded;
  const factory UserProfileState.userProfileError(ApiErrorModel apiErrorModel) = UserProfileError;

}

