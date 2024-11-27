import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/core/networks/api_result.dart';
import 'package:circle_sync/core/networks/api_services.dart';
import 'package:circle_sync/features/notifications/data/models/friend_requests_response.dart';

class NotificationRepo{
  final ApiService _apiService;
  NotificationRepo(this._apiService);

  Future<ApiResult<FriendRequestsResponse>> getFriendRequests() async {
    try {
      final response = await _apiService.getFriendRequests();
      return ApiResult.success(response);
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