import 'package:firebase_module/firestore_service.dart';

class ForumRepository {
  final FirestoreService firestoreService = FirestoreService();

  Future<void> createTopic(String title) async {
    await firestoreService.createTopic(title);
  }

  Future<void> addReply(String topicId, String reply) async {
    await firestoreService.addReply(topicId, reply);
  }
}
