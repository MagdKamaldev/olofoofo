import 'package:circle_sync/features/user_porifle/data/repos/user_profile_repo.dart';
import 'package:circle_sync/features/user_porifle/logic/user_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  final UserProfileRepo _userProfileRepo;
  UserProfileCubit(this._userProfileRepo)
      : super(const UserProfileState.initial());

  String freindShipStatus = "Add";

  Future<void> getUserProfile(String userId) async {
    emit(const UserProfileState.userProfileLoading());
    final result = await _userProfileRepo.getUserProfile(userId);
    result.when(
      success: (data) {
        if (data.data!.user![0].isFriend!) {
          freindShipStatus = "Freinds";
        } else if (data.data!.user![0].receivedRequest!) {
          freindShipStatus = "Recieved";
        } else if (data.data!.user![0].sentRequest!) {
          freindShipStatus = "Sent";
        }else{
          freindShipStatus = "Add";
        }
        emit(UserProfileState.userProfileLoaded(data));
      },
      failure: (error) {
        emit(UserProfileState.userProfileError(error));
      },
    );
  }

  Future<void> addFriend(String userId) async {
    emit(const UserProfileState.addFriendLoading());
    final result = await _userProfileRepo.addFriend(userId);
    result.when(
      success: (_) {
        emit(const UserProfileState.addFriendLoaded());
      },
      failure: (error) {
        emit(UserProfileState.addFriendError(error));
      },
    );
  }

  Future<void> acceptRequest(String userId) async {
    emit(const UserProfileState.acceptRequestLoading());
    final result = await _userProfileRepo.acceptRequest(userId);
    result.when(
      success: (_) {
        emit(const UserProfileState.acceptRequestLoaded());
      },
      failure: (error) {
        emit(UserProfileState.acceptRequestError(error));
      },
    );
  }

  Future<void> rejectRequest(String userId) async {
    emit(const UserProfileState.rejectRequestLoading());
    final result = await _userProfileRepo.rejectRequest(userId);
    result.when(
      success: (_) {
        emit(const UserProfileState.rejectRequestLoaded());
      },
      failure: (error) {
        emit(UserProfileState.rejectRequestError(error));
      },
    );
  }

  Future<void> deleteFriend(String userId) async {
    emit(const UserProfileState.deleteFriendLoading());
    final result = await _userProfileRepo.deleteFriend(userId);
    result.when(
      success: (_) {
        emit(const UserProfileState.deleteFriendLoaded());
      },
      failure: (error) {
        emit(UserProfileState.deleteFriendError(error));
      },
    );
  }

  Future<void> cancelFriendRequest(String userId) async {
    emit(const UserProfileState.cancelFriendRequestLoading());
    final result = await _userProfileRepo.cancelFriendRequest(userId);
    result.when(
      success: (_) {
        emit(const UserProfileState.cancelFriendRequestLoaded());
      },
      failure: (error) {
        emit(UserProfileState.cancelFriendRequestError(error));
      },
    );
  }
}
