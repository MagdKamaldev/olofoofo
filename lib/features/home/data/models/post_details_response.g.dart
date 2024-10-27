// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePostsResponse _$HomePostsResponseFromJson(Map<String, dynamic> json) =>
    HomePostsResponse(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomePostsResponseToJson(HomePostsResponse instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) => PostResponse(
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostResponseToJson(PostResponse instance) =>
    <String, dynamic>{
      'post': instance.post,
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
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'comments': instance.comments,
    };

AuthorData _$AuthorDataFromJson(Map<String, dynamic> json) => AuthorData(
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      profileImg: json['profile_img'] as String?,
    );

Map<String, dynamic> _$AuthorDataToJson(AuthorData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profile_img': instance.profileImg,
    };

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      id: json['id'] as String?,
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'content': instance.content,
      'createdAt': instance.createdAt,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      profileImg: json['profile_img'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profile_img': instance.profileImg,
    };
