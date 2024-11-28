import 'package:json_annotation/json_annotation.dart';
part 'edit_profile_response_model.g.dart';

@JsonSerializable()
class EditProfileResponseModel {
  String? status;
  UserData? data;

  EditProfileResponseModel({this.status, this.data});

  factory EditProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EditProfileResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditProfileResponseModelToJson(this);
}

@JsonSerializable()
class UserData {
  UserProfile? user;

  UserData({this.user});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}

@JsonSerializable()
class UserProfile {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  List<String>? friends;
  List<String>? friendRequests;
  List<String>? sentRequests;
  String? createdAt;
  String? EditdAt;
  String? bio;
  @JsonKey(name: '__v')
  int? version;

  UserProfile({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.friends,
    this.friendRequests,
    this.sentRequests,
    this.createdAt,
    this.EditdAt,
    this.bio,
    this.version,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}