import 'dart:io';
import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/core/networks/api_result.dart';
import 'package:circle_sync/core/networks/api_services.dart';
import 'package:circle_sync/features/edit_profile/data/models/edit_profile_request_model.dart';
import 'package:circle_sync/features/edit_profile/data/models/upload_profile_image_response_model.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class EditProfileRepo {
  final ApiService apiService;
  EditProfileRepo(this.apiService);

 Future<ApiResult<UploadProfileImageResponseModel>> uploadProfileImage(File image) async {
    try {
      String filename = image.path.split('/').last;
      FormData formData = FormData.fromMap({
        "profileImg": await MultipartFile.fromFile(
          image.path,
          filename: filename,
          contentType: MediaType("image", "jpg"),
        ),
      });
      final response = await apiService.uploadProfileImage(formData);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }

  Future<ApiResult> updateProfile(String firstName, String lastName, String bio) async {
    try {
      final response = await apiService.updateProfile(EditProfileRequestModel(
        firstName: firstName,
        lastName: lastName,
        bio: bio,
      ));
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error)!);
    }
  }
  
}
