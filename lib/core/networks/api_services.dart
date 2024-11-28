import 'package:circle_sync/core/networks/api_constants.dart';
import 'package:circle_sync/features/edit_profile/data/models/edit_profile_request_model.dart';
import 'package:circle_sync/features/edit_profile/data/models/edit_profile_response_model.dart';
import 'package:circle_sync/features/edit_profile/data/models/upload_profile_image_response_model.dart';
import 'package:circle_sync/features/login/data/models/login_request_body.dart';
import 'package:circle_sync/features/login/data/models/login_response.dart';
import 'package:circle_sync/features/notifications/data/models/friend_requests_response.dart';
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

  @GET(ApiConstants.profile)
  Future<ProfileResponseModel> getProfile();

  @GET(ApiConstants.getUser)
  Future<UserProfileResponseModel> getUser(@Path("userId") String userId);

  @POST(ApiConstants.addFriend)
  Future<void> addFriend(@Path("userId") String userId);

  @PATCH(ApiConstants.acceptRequest)
  Future<void> acceptRequest(@Path("userId") String userId);

  @DELETE(ApiConstants.rejectRequest)
  Future<void> rejectRequest(@Path("userId") String userId);

  @DELETE(ApiConstants.deleteFriend)
  Future<void> deleteFriend(@Path("userId") String userId);

  @DELETE(ApiConstants.cancelFriendRequest)
  Future<void> cancelFriendRequest(@Path("userId") String userId);

  @GET(ApiConstants.getFriendRequests)
  Future<FriendRequestsResponse> getFriendRequests();
  
  @MultiPart()
  @PATCH(ApiConstants.uploadProfileImage)
  Future<UploadProfileImageResponseModel> uploadProfileImage(@Body() FormData formData);
  
  @PATCH(ApiConstants.profile)
  Future<EditProfileResponseModel> updateProfile(@Body() EditProfileRequestModel editProfileRequestModel);

}
