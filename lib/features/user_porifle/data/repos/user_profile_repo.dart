import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/core/networks/api_result.dart';
import 'package:circle_sync/core/networks/api_services.dart';
import 'package:circle_sync/features/user_porifle/data/models/user_profile_response_model.dart';

class UserProfileRepo {
  final ApiService _apiService;
  UserProfileRepo(this._apiService);

  Future<ApiResult<UserProfileResponseModel>> getUserProfile(String userId) async {
    try {
      final response = await _apiService.getUser(userId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }
}