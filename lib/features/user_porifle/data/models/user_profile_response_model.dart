import 'package:circle_sync/features/profile/data/models/profile_response_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_profile_response_model.g.dart';

@JsonSerializable()
class UserProfileResponseModel {
  String? status;
  UserProfileData? data;

  UserProfileResponseModel({this.status, this.data});

  factory UserProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileResponseModelToJson(this);
}

@JsonSerializable()
class UserProfileData {
  List<UserProfile>? user;

  UserProfileData({this.user});

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileDataToJson(this);
}

@JsonSerializable()
class UserProfile {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? profileImg;
  bool? isFriend;
  bool? sentRequest;
  bool? receivedRequest;
  List<Post>? posts;

  UserProfile({
    this.id,
    this.firstName,
    this.lastName,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.profileImg,
    this.isFriend,
    this.sentRequest,
    this.receivedRequest,
    this.posts,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}

