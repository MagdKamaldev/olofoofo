import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/core/networks/api_result.dart';
import 'package:circle_sync/features/add_post/data/apis/add_post_api_services.dart';
import 'package:circle_sync/features/add_post/data/models/create_post_request_body.dart';
import 'package:circle_sync/features/add_post/data/models/create_post_response.dart';

class CreatePostRepo{
  final AddPostApiService _apiService;
  CreatePostRepo(this._apiService);

  Future<ApiResult<CreatePostResponse>> addPost(CreatePostRequestBody createPostRequestBody) async {
    try {
      final response = await _apiService.createPost(createPostRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }
}