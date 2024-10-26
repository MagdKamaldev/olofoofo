import 'package:json_annotation/json_annotation.dart';
part 'post_response_model.g.dart';

@JsonSerializable()
class PostResponse {
  List<Post>? posts;

  PostResponse({this.posts});

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

  Post({
    this.id,
    this.content,
    this.authorId,
    this.likesCount,
    this.commentsCount,
    this.createdAt,
    this.isLiked,
    this.author,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}

@JsonSerializable()
class AuthorData {
  String? id;
  @JsonKey(name: 'profile_img')
  String? profileImg;
  String? firstName;
  String? lastName;

  AuthorData({
    this.id,
    this.profileImg,
    this.firstName,
    this.lastName,
  });

  factory AuthorData.fromJson(Map<String, dynamic> json) =>
      _$AuthorDataFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDataToJson(this);
}