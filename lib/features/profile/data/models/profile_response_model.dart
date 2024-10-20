import 'package:json_annotation/json_annotation.dart';
import 'post_model.dart';

part 'profile_response_model.g.dart';

@JsonSerializable()
class UserProfile {
  String? id;
  String? firstName;
  String? lastName;
  String? profileImg;
  List<PostModel>? posts;
  bool? isFriend;
  bool? isRequested;

  UserProfile({
    this.id,
    this.firstName,
    this.lastName,
    this.profileImg,
    this.posts,
    this.isFriend,
    this.isRequested,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}


@JsonSerializable()
class ProfileResponseModel {
  @JsonKey(name: 'user')
  UserProfile? user;

  ProfileResponseModel({this.user});

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseModelToJson(this);
}
