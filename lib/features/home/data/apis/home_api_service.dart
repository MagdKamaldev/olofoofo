import 'package:circle_sync/core/networks/api_constants.dart';
import 'package:circle_sync/features/home/data/apis/home_api_constants.dart';
import 'package:circle_sync/features/home/data/models/post_details_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBASEURL)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.posts)
  Future<HomePostsResponse> getPosts();

  @GET("${HomeApiConstants.post}/{postId}")
Future<PostResponse> getPost(@Path("postId") String postId);
}