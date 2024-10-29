import 'package:json_annotation/json_annotation.dart';

part 'create_post_response.g.dart';

@JsonSerializable()
class CreatePostResponse {
  final String status;
  final PostData data;

  CreatePostResponse({required this.status, required this.data});

  factory CreatePostResponse.fromJson(Map<String, dynamic> json) => _$CreatePostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePostResponseToJson(this);
}

@JsonSerializable()
class PostData {
  final Post post;

  PostData({required this.post});

  factory PostData.fromJson(Map<String, dynamic> json) => _$PostDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostDataToJson(this);
}

@JsonSerializable()
class Post {
  final String content;
  final String author;
  final int likesCount;
  final int commentsCount;
  final List<dynamic> media; // Change to specific type if needed
  final String id; // This maps to the "id" field in JSON
  final String createdAt;
  final String updatedAt;

  Post({
    required this.content,
    required this.author,
    required this.likesCount,
    required this.commentsCount,
    required this.media,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}