import 'package:circle_sync/features/home/data/models/home_responses.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_comment_response.g.dart';

@JsonSerializable()
class CommentResponse {
  final String status;
  final CommentData data;

  CommentResponse({required this.status, required this.data});

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CommentResponseToJson(this);
}

@JsonSerializable()
class CommentData {
  final Comment comment;

  CommentData({required this.comment});

  factory CommentData.fromJson(Map<String, dynamic> json) =>
      _$CommentDataFromJson(json);

  Map<String, dynamic> toJson() => _$CommentDataToJson(this);
}

