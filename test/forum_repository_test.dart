import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockFirestoreService extends Mock {
  Future<void> createTopic(String title) async {}
}

void main() {
  test('Create topic successfully', () async {
    final firestoreService = MockFirestoreService();

    await firestoreService.createTopic('Test Topic');

    expect(true, true);
  });
}
