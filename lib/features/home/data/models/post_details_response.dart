
import 'package:json_annotation/json_annotation.dart';

part 'post_details_response.g.dart';


@JsonSerializable()
class HomePostsResponse {
  List<Post>? posts;

  HomePostsResponse({this.posts});

  factory HomePostsResponse.fromJson(Map<String, dynamic> json) =>
      _$HomePostsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomePostsResponseToJson(this);
}


@JsonSerializable()
class PostResponse {
  Post? post;

  PostResponse({this.post});

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostResponseToJson(this);
}

@JsonSerializable()
class Post {
  String? id;
  String? content;
  String? authorId;
  int? likesCount;
  int? commentsCount;
  String? createdAt;
  bool? isLiked;
  AuthorData? author;
  
  // Added comments field
  List<Comment>? comments;

  Post({
    this.id,
    this.content,
    this.authorId,
    this.likesCount,
    this.commentsCount,
    this.createdAt,
    this.isLiked,
    this.author,
    this.comments,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}



@JsonSerializable()
class AuthorData {
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
  String? id;
  UserData? user;
  String? content;
  String? createdAt;

  Comment({this.id, this.user, this.content, this.createdAt});

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}

@JsonSerializable()
class UserData {
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