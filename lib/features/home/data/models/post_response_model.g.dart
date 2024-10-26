// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) => PostResponse(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostResponseToJson(PostResponse instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: json['id'] as String?,
      content: json['content'] as String?,
      authorId: json['authorId'] as String?,
      likesCount: (json['likesCount'] as num?)?.toInt(),
      commentsCount: (json['commentsCount'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      isLiked: json['isLiked'] as bool?,
      author: json['author'] == null
          ? null
          : AuthorData.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'authorId': instance.authorId,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'createdAt': instance.createdAt,
      'isLiked': instance.isLiked,
      'author': instance.author,
    };

AuthorData _$AuthorDataFromJson(Map<String, dynamic> json) => AuthorData(
      id: json['id'] as String?,
      profileImg: json['profile_img'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$AuthorDataToJson(AuthorData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_img': instance.profileImg,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
