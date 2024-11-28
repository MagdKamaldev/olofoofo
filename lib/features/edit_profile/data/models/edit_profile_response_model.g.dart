// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditProfileResponseModel _$EditProfileResponseModelFromJson(
        Map<String, dynamic> json) =>
    EditProfileResponseModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EditProfileResponseModelToJson(
        EditProfileResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      user: json['user'] == null
          ? null
          : UserProfile.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'user': instance.user,
    };

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      friends:
          (json['friends'] as List<dynamic>?)?.map((e) => e as String).toList(),
      friendRequests: (json['friendRequests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sentRequests: (json['sentRequests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      EditdAt: json['EditdAt'] as String?,
      bio: json['bio'] as String?,
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'friends': instance.friends,
      'friendRequests': instance.friendRequests,
      'sentRequests': instance.sentRequests,
      'createdAt': instance.createdAt,
      'EditdAt': instance.EditdAt,
      'bio': instance.bio,
      '__v': instance.version,
    };
