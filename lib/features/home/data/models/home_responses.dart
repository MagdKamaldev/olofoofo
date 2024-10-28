import 'package:json_annotation/json_annotation.dart';

part 'home_responses.g.dart';

@JsonSerializable()
class HomePostsResponse {
  String? status;
  DataPosts? data;

  HomePostsResponse({this.status, this.data});

  factory HomePostsResponse.fromJson(Map<String, dynamic> json) =>
      _$HomePostsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomePostsResponseToJson(this);
}

@JsonSerializable()
class PostResponse {
  String? status;
  DataPost? data;

  PostResponse({this.status, this.data});

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostResponseToJson(this);
}

@JsonSerializable()
class DataPosts {
  List<Post>? posts;

  DataPosts({this.posts});

  factory DataPosts.fromJson(Map<String, dynamic> json) =>
      _$DataPostsFromJson(json);

  Map<String, dynamic> toJson() => _$DataPostsToJson(this);
}

@JsonSerializable()
class DataPost {
  Post? post;

  DataPost({this.post});

  factory DataPost.fromJson(Map<String, dynamic> json) =>
      _$DataPostFromJson(json);

  Map<String, dynamic> toJson() => _$DataPostToJson(this);
}

@JsonSerializable()
class Post {
  @JsonKey(name: '_id')
  String? id;
  String? content;
  int? likesCount;
  int? commentsCount;
  String? createdAt;
  String? updatedAt;
  bool? isLiked;
  List<dynamic>? media; // Assuming media is a list of dynamic for now
  AuthorData? author;
  List<Comment>? comments;
  @JsonKey(name: '__v')
  int? version;

  Post({
    this.id,
    this.content,
    this.likesCount,
    this.commentsCount,
    this.createdAt,
    this.updatedAt,
    this.isLiked,
    this.media,
    this.author,
    this.comments,
    this.version,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}

@JsonSerializable()
class AuthorData {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  @JsonKey(name: 'profile_img')
  String? profileImg;

  AuthorData({
    this.id,
    this.firstName,
    this.lastName,
    this.profileImg,
  });

  factory AuthorData.fromJson(Map<String, dynamic> json) =>
      _$AuthorDataFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDataToJson(this);
}

@JsonSerializable()
class Comment {
  @JsonKey(name: '_id')
  String? id;
  List<UserData>? user; // Updated to List<UserData> to handle array structure
  String? content;
  String? createdAt;

  Comment({this.id, this.user, this.content, this.createdAt});

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  @JsonKey(name: 'profile_img')
  String? profileImg;

  UserData({
    this.id,
    this.firstName,
    this.lastName,
    this.profileImg,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}