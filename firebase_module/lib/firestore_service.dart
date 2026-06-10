import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> createTopic(String title) async {
    await firestore.collection('topics').add({
      'title': title,
      'author': FirebaseAuth.instance.currentUser?.email,
      'createdAt': Timestamp.now(),
    });
  }

  Future<void> addReply(String topicId, String reply) async {
    await firestore
        .collection('topics')
        .doc(topicId)
        .collection('replies')
        .add({
          'reply': reply,
          'author': FirebaseAuth.instance.currentUser?.email,
          'createdAt': Timestamp.now(),
        });
  }
}
