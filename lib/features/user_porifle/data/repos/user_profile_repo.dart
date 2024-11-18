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

  Future<ApiResult<void>> addFriend(String userId) async {
    try {
      await _apiService.addFriend(userId);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }

  Future<ApiResult<void>> deleteFriend(String userId) async {
    try {
      await _apiService.deleteFriend(userId);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }

  Future<ApiResult<void>> acceptRequest(String userId) async {
    try {
      await _apiService.acceptRequest(userId);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }

  Future<ApiResult<void>> rejectRequest(String userId) async {
    try {
      await _apiService.rejectRequest(userId);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }


}