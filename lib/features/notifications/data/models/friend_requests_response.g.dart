// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_requests_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendRequestsResponse _$FriendRequestsResponseFromJson(
        Map<String, dynamic> json) =>
    FriendRequestsResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : FriendRequestsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FriendRequestsResponseToJson(
        FriendRequestsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

FriendRequestsData _$FriendRequestsDataFromJson(Map<String, dynamic> json) =>
    FriendRequestsData(
      friendRequests: (json['friendRequests'] as List<dynamic>?)
          ?.map((e) => FriendRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FriendRequestsDataToJson(FriendRequestsData instance) =>
    <String, dynamic>{
      'friendRequests': instance.friendRequests,
    };

FriendRequest _$FriendRequestFromJson(Map<String, dynamic> json) =>
    FriendRequest(
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      profileImg: json['profileImg'] as String?,
    );

Map<String, dynamic> _$FriendRequestToJson(FriendRequest instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profileImg': instance.profileImg,
    };
