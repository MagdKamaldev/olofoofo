// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentResponse _$CommentResponseFromJson(Map<String, dynamic> json) =>
    CommentResponse(
      status: json['status'] as String,
      data: CommentData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentResponseToJson(CommentResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

CommentData _$CommentDataFromJson(Map<String, dynamic> json) => CommentData(
      comment: Comment.fromJson(json['comment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentDataToJson(CommentData instance) =>
    <String, dynamic>{
      'comment': instance.comment,
    };
