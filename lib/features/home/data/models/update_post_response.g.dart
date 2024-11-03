// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePostResponse _$UpdatePostResponseFromJson(Map<String, dynamic> json) =>
    UpdatePostResponse(
      status: json['status'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdatePostResponseToJson(UpdatePostResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      post: Post.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'post': instance.post,
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: json['_id'] as String,
      content: json['content'] as String,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      likesCount: (json['likesCount'] as num).toInt(),
      commentsCount: (json['commentsCount'] as num).toInt(),
      media: json['media'] as List<dynamic>,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      version: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
      'author': instance.author,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'media': instance.media,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      id: json['_id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
