import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? status;
  Data? data;

  SignUpResponse({this.status, this.data});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}

@JsonSerializable()
class Data {
  UserData? user;
  String? token;

  Data({this.user, this.token});

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  @JsonKey(name: 'profile_img')
  String ? profileImage;
  String? email;
  String? password;
  List<dynamic>? friends;
  List<dynamic>? friendRequests;
  String? createdAt;
  String? updatedAt;
  @JsonKey(name: '__v')
  int? version;

  UserData({
    this.profileImage,
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.friends,
    this.friendRequests,
    this.createdAt,
    this.updatedAt,
    this.version,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}