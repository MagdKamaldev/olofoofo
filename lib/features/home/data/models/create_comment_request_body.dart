import 'package:json_annotation/json_annotation.dart';

part 'create_comment_request_body.g.dart';

@JsonSerializable()
class CreateCommentRequestBody {
  final String content;

  CreateCommentRequestBody({required this.content});

  factory CreateCommentRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCommentRequestBodyToJson(this);
}