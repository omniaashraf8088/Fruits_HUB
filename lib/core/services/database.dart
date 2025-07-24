abstract class DatabaseService {
  Future<void> addData({
    required String path,
    Map<String, dynamic> data = const {},
    String? documentId,
  });

  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  });

  Future<bool> checkIfDataExist({
    required String path,
    required String documentId,
  });
}
