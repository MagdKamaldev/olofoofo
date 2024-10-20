import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'user')
  UserData? userData;
  String? token;

  LoginResponse({this.userData, this.token});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class UserData {
  String? id;
  @JsonKey(name: 'firstName')
  String? firstName;
  @JsonKey(name: 'lastName')
  String? lastName;
  @JsonKey(name: 'profile_img')
  String? profileImg;
  String? email;
  String? password;
  @JsonKey(name: 'createdAt')
  String? createdAt;

  UserData({
    this.id,
    this.firstName,
    this.lastName,
    this.profileImg,
    this.email,
    this.password,
    this.createdAt,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}