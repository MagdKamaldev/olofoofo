import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  String? id;
  String? content;
  String? authorId;
  int? likesCount;
  int? commentsCount;
  DateTime? createdAt;

  PostModel({
    this.id,
    this.content,
    this.authorId,
    this.likesCount,
    this.commentsCount,
    this.createdAt,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}