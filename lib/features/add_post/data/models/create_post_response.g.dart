// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePostResponse _$CreatePostResponseFromJson(Map<String, dynamic> json) =>
    CreatePostResponse(
      status: json['status'] as String,
      data: PostData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePostResponseToJson(CreatePostResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

PostData _$PostDataFromJson(Map<String, dynamic> json) => PostData(
      post: Post.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostDataToJson(PostData instance) => <String, dynamic>{
      'post': instance.post,
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      content: json['content'] as String,
      author: json['author'] as String,
      likesCount: (json['likesCount'] as num).toInt(),
      commentsCount: (json['commentsCount'] as num).toInt(),
      media: (json['media'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['_id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'content': instance.content,
      'author': instance.author,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'media': instance.media,
      '_id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
