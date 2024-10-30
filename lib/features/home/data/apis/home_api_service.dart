import 'package:circle_sync/core/networks/api_constants.dart';
import 'package:circle_sync/features/home/data/apis/home_api_constants.dart';
import 'package:circle_sync/features/home/data/models/create_comment_request_body.dart';
import 'package:circle_sync/features/home/data/models/create_comment_response.dart';
import 'package:circle_sync/features/home/data/models/home_responses.dart';
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

  @POST(HomeApiConstants.likePost)
  Future<void> likePost(@Path("postId") String postId);

  @DELETE(HomeApiConstants.unlikePost)
  Future<void> unlikePost(@Path("postId") String postId);
 
  @POST(HomeApiConstants.comment)
  Future<CommentResponse> comment(@Path("postId") String postId,
  @Body() CreateCommentRequestBody createCommentRequestBody,
  );

  @DELETE(HomeApiConstants.deleteComment)
  Future<void> deleteComment(
  @Path("postId") String postId,
  @Path("commentId") String commentId,
  
  );

}