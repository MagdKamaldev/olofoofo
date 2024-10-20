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

  // This is to handle DateTime conversion from and to JSON
  static DateTime? _dateTimeFromJson(String? date) =>
      date == null ? null : DateTime.parse(date);

  static String? _dateTimeToJson(DateTime? date) =>
      date?.toIso8601String();
}