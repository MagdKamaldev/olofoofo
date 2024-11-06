import 'package:circle_sync/features/user_porifle/data/repos/user_profile_repo.dart';
import 'package:circle_sync/features/user_porifle/logic/user_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  final UserProfileRepo _userProfileRepo;
  UserProfileCubit(this._userProfileRepo) : super( const UserProfileState.initial());

  Future<void> getUserProfile(String userId) async {
    emit(const UserProfileState.userProfileLoading());
    final result = await _userProfileRepo.getUserProfile(userId);
    result.when(
      success: (data) {
        emit(UserProfileState.userProfileLoaded(data));
      },
      failure: (error) {
        emit(UserProfileState.userProfileError(error));
      },
    );
  }
  
}
