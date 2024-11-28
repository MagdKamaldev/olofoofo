import 'package:json_annotation/json_annotation.dart';

part 'profile_response_model.g.dart';

@JsonSerializable()
class ProfileResponseModel {
  String? status;
  ProfileData? data;

  ProfileResponseModel({this.status, this.data});

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseModelToJson(this);
}

@JsonSerializable()
class ProfileData {
  @JsonKey(name: 'user')
  List<UserProfile>? users;

  ProfileData({this.users});

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);
}

@JsonSerializable()
class UserProfile {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? password; // Add password field if it's needed to capture in the response
  List<String>? friends;
  List<String>? friendRequests; // Assuming friend requests as a list of user IDs or similar identifiers
  List<Post>? posts;
  String? bio;
  String? profileImg;
  String? createdAt;
  String? updatedAt;
  int? v; // Assuming this is the version field (__v) from the response

  UserProfile({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.friends,
    this.friendRequests,
    this.posts,
    this.bio,
    this.profileImg,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}

@JsonSerializable()
class Post {
  @JsonKey(name: '_id')
  String? id;
  String? content;
  String? author;
  int? likesCount;
  int? commentsCount;
  List<String>? media; // Assuming media is a list of URLs or identifiers
  String? createdAt;
  String? updatedAt;

  Post({
    this.id,
    this.content,
    this.author,
    this.likesCount,
    this.commentsCount,
    this.media,
    this.createdAt,
    this.updatedAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}