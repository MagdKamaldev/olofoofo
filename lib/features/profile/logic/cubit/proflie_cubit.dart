import 'package:circle_sync/features/profile/data/repos/profile_repo.dart';
import 'package:circle_sync/features/profile/logic/cubit/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;
  ProfileCubit(this._profileRepo) : super(const ProfileState.initial());

  void emitProfileStates() async {
    emit(const ProfileState.getProfileLoading());
    final response = await _profileRepo.getProfile();
    response.when(
      success: (data) async {
        emit(ProfileState.getProfileSuccess(data));
      },
      failure: (apiErrorModel) {
        emit(ProfileState.getProfilefailure(apiErrorModel));
      },
    );
  }
}
