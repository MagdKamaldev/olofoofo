import 'package:json_annotation/json_annotation.dart';

part 'update_post_request_body.g.dart';

@JsonSerializable()
class UpdatePostRequestBody {
  final String content;

  UpdatePostRequestBody({required this.content});

  factory UpdatePostRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdatePostRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePostRequestBodyToJson(this);
}