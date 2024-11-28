import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/core/networks/api_result.dart';
import 'package:circle_sync/features/home/data/apis/home_api_service.dart';
import 'package:circle_sync/features/home/data/models/create_comment_request_body.dart';
import 'package:circle_sync/features/home/data/models/create_comment_response.dart';
import 'package:circle_sync/features/home/data/models/home_responses.dart';
import 'package:circle_sync/features/home/data/models/update_post_request_body.dart';


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


  Future<ApiResult<void>> likePost(String postId) async {
    try {
      await _homeApiService.likePost(postId);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }

  Future<ApiResult<void>> unlikePost(String postId) async {
    try {
      await _homeApiService.unlikePost(postId);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }

  Future<ApiResult<CommentResponse>> comment(String postId,String comment) async {
    try {
      final response = await _homeApiService.comment(postId, CreateCommentRequestBody(content: comment));
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }

  Future<ApiResult<CommentResponse>> updateComment(String postId, String commentId, String comment) async {
    try {
      final response = await _homeApiService.updateComment(postId, commentId, CreateCommentRequestBody(content: comment));
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }

  Future<ApiResult<void>> deleteComment(String postId, String commentId) async {
    try {
      await _homeApiService.deleteComment(postId, commentId,);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }

  Future<ApiResult<void>> updatePost(String postId, String content) async {
    try {
      await _homeApiService.updatePost(postId, UpdatePostRequestBody(content: content));
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }


  Future<ApiResult<void>> deletePost(String postId) async {
    try {
      await _homeApiService.deletePost(postId);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }
}