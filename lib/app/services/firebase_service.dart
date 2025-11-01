import 'package:between_us/modules/draft_post/data/models/post.dart';
import 'package:between_us/modules/draft_post/domain/models/post_entry.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class FirebaseService {
  final _firestore = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;

  Future<void> createPost({required PostEntry postEntry}) async {
    final id = const Uuid().v4();
    String? mediaUrl;

    if (postEntry.media != null) {
      final ref = _storage.ref().child('posts/$id');
      await ref.putFile(postEntry.media!);
      mediaUrl = await ref.getDownloadURL();
    }

    final post = Post(
      id: id,
      description: postEntry.description,
      mediaUrl: mediaUrl,
      createdAt: DateTime.now(),
    );

    await _firestore.collection('posts').doc(id).set(post.toJson());
  }

  Future<List<Post>> fetchPosts() async {
    final snapshot = await _firestore
        .collection('posts')
        .orderBy('createdAt', descending: true)
        .get();

    return snapshot.docs.map((doc) => Post.fromJson(doc.data())).toList();
  }
}
