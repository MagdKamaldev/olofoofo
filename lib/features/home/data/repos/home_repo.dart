import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/core/networks/api_result.dart';
import 'package:circle_sync/features/home/data/apis/home_api_service.dart';
import 'package:circle_sync/features/home/data/models/home_responses.dart';


class HomeRepo {
  final HomeApiService _homeApiService;
  HomeRepo(this._homeApiService);

  Future<ApiResult<HomePostsResponse>> getPosts() async {
    try {
      final response = await _homeApiService.getPosts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }

  Future<ApiResult<PostResponse>> getPost(String postId) async {
    try {
      final response = await _homeApiService.getPost(postId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }
}