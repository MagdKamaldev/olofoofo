import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  @JsonKey(name: 'user')
  UserData? userData;
  String? token;

  SignUpResponse({this.userData, this.token});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
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