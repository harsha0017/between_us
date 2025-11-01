import 'dart:io';

class PostEntry {
  const PostEntry({required this.description, this.media});

  final String description;
  final File? media;
}
