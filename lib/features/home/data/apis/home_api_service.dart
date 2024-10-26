import 'package:circle_sync/core/networks/api_constants.dart';
import 'package:circle_sync/features/home/data/apis/home_api_constants.dart';
import 'package:circle_sync/features/home/data/models/post_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBASEURL)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.posts)
  Future<PostResponse> getPosts();
  
}