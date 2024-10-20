import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/core/networks/api_result.dart';
import 'package:circle_sync/core/networks/api_services.dart';
import 'package:circle_sync/features/profile/data/models/profile_response_model.dart';

class ProfileRepo {
  final ApiService _apiService;
  ProfileRepo(this._apiService);

  Future<ApiResult<ProfileResponseModel>> getProfile(String userId) async {
    try {
      final response = await _apiService.getUser(userId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}