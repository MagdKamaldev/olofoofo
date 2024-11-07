import 'package:circle_sync/core/networks/api_error_model.dart';
import 'package:circle_sync/features/user_porifle/data/models/user_profile_response_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {

  //get user profile
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.userProfileLoading() = UserProfileLoading;
  const factory UserProfileState.userProfileLoaded(UserProfileResponseModel userProfileResponseModel) = UserProfileLoaded;
  const factory UserProfileState.userProfileError(ApiErrorModel apiErrorModel) = UserProfileError;
  
  //add friend
  const factory UserProfileState.addFriendLoading() = AddFriendLoading;
  const factory UserProfileState.addFriendLoaded() = AddFriendLoaded;
  const factory UserProfileState.addFriendError(ApiErrorModel apiErrorModel) = AddFriendError;

  //accept request
  const factory UserProfileState.acceptRequestLoading() = AcceptRequestLoading;
  const factory UserProfileState.acceptRequestLoaded() = AcceptRequestLoaded;
  const factory UserProfileState.acceptRequestError(ApiErrorModel apiErrorModel) = AcceptRequestError;

  //reject request
  const factory UserProfileState.rejectRequestLoading() = RejectRequestLoading;
  const factory UserProfileState.rejectRequestLoaded() = RejectRequestLoaded;
  const factory UserProfileState.rejectRequestError(ApiErrorModel apiErrorModel) = RejectRequestError;

}

