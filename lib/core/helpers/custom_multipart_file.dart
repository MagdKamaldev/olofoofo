import 'package:dio/dio.dart';

class CustomMultipartFile {
  final MultipartFile file;

  CustomMultipartFile(this.file);

  // Add the toJson() method
  Map<String, dynamic> toJson() {
    return {
      'profileImg': file.filename ?? '',
    };
  }

  // Optionally, you can implement fromJson() if needed
  factory CustomMultipartFile.fromJson(Map<String, dynamic> json) {
    return CustomMultipartFile(
      MultipartFile.fromFileSync(json['profileImg']),
    );
  }
}