import 'package:json_annotation/json_annotation.dart';

part 'upload_profile_image_response_model.g.dart';

@JsonSerializable()
class UploadProfileImageResponseModel {
  String? status;
  Data? data;

  UploadProfileImageResponseModel({this.status, this.data});

  factory UploadProfileImageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UploadProfileImageResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$UploadProfileImageResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  User? user;
  Data({this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class User {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? profileImg;
  String? bio;

  User({this.id, this.firstName, this.lastName, this.email, this.profileImg, this.bio});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}