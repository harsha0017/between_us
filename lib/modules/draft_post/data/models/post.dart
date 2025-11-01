import 'package:freezed_annotation/freezed_annotation.dart';
part 'post.g.dart';

@JsonSerializable()
class Post {
  final String id;
  final String description;
  final String? mediaUrl;
  final DateTime createdAt;

  Post({
    required this.id,
    required this.description,
    this.mediaUrl,
    required this.createdAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
