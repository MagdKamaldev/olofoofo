import 'package:json_annotation/json_annotation.dart';

part 'friend_requests_response.g.dart';

@JsonSerializable()
class FriendRequestsResponse {
  String? status;
  FriendRequestsData? data;

  FriendRequestsResponse({this.status, this.data});

  factory FriendRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FriendRequestsResponseToJson(this);
}

@JsonSerializable()
class FriendRequestsData {
  List<FriendRequest>? friendRequests;

  FriendRequestsData({this.friendRequests});

  factory FriendRequestsData.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestsDataFromJson(json);

  Map<String, dynamic> toJson() => _$FriendRequestsDataToJson(this);
}

@JsonSerializable()
class FriendRequest {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  String? profileImg;

  FriendRequest({
    this.id,
    this.firstName,
    this.lastName,
    this.profileImg,
  });

  factory FriendRequest.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FriendRequestToJson(this);
}