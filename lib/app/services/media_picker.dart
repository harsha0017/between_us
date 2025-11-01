import 'dart:io';
import 'package:image_picker/image_picker.dart';

class MediaPicker {
  final ImagePicker _picker = ImagePicker();

  Future<File?> pickMedia({required bool fromCamera}) async {
    final XFile? pickedFile = await _picker.pickImage(
      source: fromCamera ? ImageSource.camera : ImageSource.gallery,
      imageQuality: 80, // optional: compress image
    );

    if (pickedFile == null) return null;
    return File(pickedFile.path);
  }
}
