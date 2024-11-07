// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePostsResponse _$HomePostsResponseFromJson(Map<String, dynamic> json) =>
    HomePostsResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : DataPosts.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomePostsResponseToJson(HomePostsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) => PostResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : DataPost.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostResponseToJson(PostResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

DataPosts _$DataPostsFromJson(Map<String, dynamic> json) => DataPosts(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataPostsToJson(DataPosts instance) => <String, dynamic>{
      'posts': instance.posts,
    };

DataPost _$DataPostFromJson(Map<String, dynamic> json) => DataPost(
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataPostToJson(DataPost instance) => <String, dynamic>{
      'post': instance.post,
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: json['_id'] as String?,
      content: json['content'] as String?,
      likesCount: (json['likesCount'] as num?)?.toInt(),
      commentsCount: (json['commentsCount'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      isLiked: json['isLiked'] as bool?,
      media: json['media'] as List<dynamic>?,
      author: json['author'] == null
          ? null
          : AuthorData.fromJson(json['author'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isLiked': instance.isLiked,
      'media': instance.media,
      'author': instance.author,
      'comments': instance.comments,
      '__v': instance.version,
    };

AuthorData _$AuthorDataFromJson(Map<String, dynamic> json) => AuthorData(
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      profileImg: json['profileImg'] as String?,
    );

Map<String, dynamic> _$AuthorDataToJson(AuthorData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profileImg': instance.profileImg,
    };

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      id: json['_id'] as String?,
      user: (json['user'] as List<dynamic>?)
          ?.map((e) => UserData.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String?,
      userId: json['userId'] as String?,
      postId: json['postId'] as String?,
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'postId': instance.postId,
      'user': instance.user,
      'content': instance.content,
      'createdAt': instance.createdAt,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      profileImg: json['profileImg'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profileImg': instance.profileImg,
    };
