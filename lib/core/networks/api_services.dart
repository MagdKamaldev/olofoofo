import 'package:circle_sync/core/networks/api_constants.dart';
import 'package:circle_sync/features/login/data/models/login_request_body.dart';
import 'package:circle_sync/features/login/data/models/login_response.dart';
import 'package:circle_sync/features/profile/data/models/profile_response_model.dart';
import 'package:circle_sync/features/signup/data/models/sign_up_request_body.dart';
import 'package:circle_sync/features/signup/data/models/sign_up_response.dart';
import 'package:circle_sync/features/user_porifle/data/models/user_profile_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBASEURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signUp)
  Future<SignUpResponse> signUp(@Body() SignUpRequestBody signUpRequestBody);

 @GET(ApiConstants.getMyProfile)
  Future<ProfileResponseModel> getProfile();

 @GET(ApiConstants.getUser)
  Future<UserProfileResponseModel> getUser(@Path("userId") String userId);
}
