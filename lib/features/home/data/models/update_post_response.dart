import 'package:json_annotation/json_annotation.dart';

part 'update_post_response.g.dart';

@JsonSerializable()
class UpdatePostResponse {
  final String status;
  final Data data;

  UpdatePostResponse({required this.status, required this.data});

  factory UpdatePostResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdatePostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePostResponseToJson(this);
}

@JsonSerializable()
class Data {
  final Post post;

  Data({required this.post});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Post {
  @JsonKey(name: '_id')
  final String id;
  final String content;
  final Author author;
  final int likesCount;
  final int commentsCount;
  final List<dynamic> media; // adjust type if specific media type is known
  final String createdAt;
  final String updatedAt;
  @JsonKey(name: '__v')
  final int version;

  Post({
    required this.id,
    required this.content,
    required this.author,
    required this.likesCount,
    required this.commentsCount,
    required this.media,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}

@JsonSerializable()
class Author {
  @JsonKey(name: '_id')
  final String id;
  final String firstName;
  final String lastName;

  Author({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}