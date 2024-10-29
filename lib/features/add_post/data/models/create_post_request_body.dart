import 'package:json_annotation/json_annotation.dart';

part 'create_post_request_body.g.dart';

@JsonSerializable()
class CreatePostRequestBody {
  final String content;

  CreatePostRequestBody({required this.content});

  factory CreatePostRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreatePostRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePostRequestBodyToJson(this);
}