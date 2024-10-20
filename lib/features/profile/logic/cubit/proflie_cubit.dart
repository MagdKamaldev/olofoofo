import 'package:circle_sync/core/helpers/constants.dart';
import 'package:circle_sync/core/helpers/shared_pref_helper.dart';
import 'package:circle_sync/features/profile/data/models/profile_response_model.dart';
import 'package:circle_sync/features/profile/data/repos/profile_repo.dart';
import 'package:circle_sync/features/profile/logic/cubit/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;
  ProfileCubit(this._profileRepo) : super(const ProfileState.initial());

  ProfileResponseModel? user;

  void emitProfileStates() async {
    emit(const ProfileState.getProfileLoading());
    String id = await SharedPrefHelper.getString(SharedPrefKeys.userId);
    final response = await _profileRepo.getProfile(id);
    response.when(
      success: (data) async {
        user = data;
        emit(ProfileState.getProfileSuccess(data));
      },
      failure: (error) {
        emit(ProfileState.getProfilefailure(
            error: error.apiErrorModel.message ?? ""));
      },
    );
  }
}
