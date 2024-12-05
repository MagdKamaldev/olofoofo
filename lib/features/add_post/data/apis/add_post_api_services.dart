import 'package:circle_sync/core/networks/api_constants.dart';
import 'package:circle_sync/features/add_post/data/apis/add_post_api_constants.dart';
import 'package:circle_sync/features/add_post/data/models/create_post_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'add_post_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBASEURL)

abstract class AddPostApiService {
  factory AddPostApiService(Dio dio) = _AddPostApiService;

  @POST(AddPostApiConstants.addPost)
  Future<CreatePostResponse> createPost(@Body() FormData formData);
}