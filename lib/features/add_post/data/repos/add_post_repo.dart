import 'dart:io';
import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/core/networks/api_result.dart';
import 'package:circle_sync/features/add_post/data/apis/add_post_api_services.dart';
import 'package:dio/dio.dart';
import 'package:circle_sync/features/add_post/data/models/create_post_response.dart';
import 'package:http_parser/http_parser.dart';

class CreatePostRepo {
  final AddPostApiService _apiService;
  CreatePostRepo(this._apiService);

  Future<ApiResult<CreatePostResponse>> addPost(
      String caption, List<File> images) async {
    try {
      // Prepare the form data
      FormData formData = FormData.fromMap({
        "content": caption,
        "images": await Future.wait(images.map((image) async {
          String filename = image.path.split('/').last;
          return await MultipartFile.fromFile(
            image.path,
            filename: filename,
            contentType: MediaType("image", "jpg"),
          );
        }).toList()),
      });

      // Send the request using the API service
      final response = await _apiService.createPost(formData);

      // Return the success response
      return ApiResult.success(response);
    } catch (error) {
      // Handle and return any errors
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }
}