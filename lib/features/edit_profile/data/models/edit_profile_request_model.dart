import 'package:json_annotation/json_annotation.dart';

part 'edit_profile_request_model.g.dart';

@JsonSerializable()
class EditProfileRequestModel {
  String? firstName;
  String? lastName;
  String? bio;

  EditProfileRequestModel({
    this.firstName,
    this.lastName,
    this.bio,
  });

  factory EditProfileRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EditProfileRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditProfileRequestModelToJson(this);
}