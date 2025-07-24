import 'package:fruits_hub/core/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService implements DatabaseService {
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    Map<String, dynamic>? data,
    String? documentId,
  }) async {
    try {
      if (documentId != null) {
        await fireStore.collection(path).doc(documentId).set(data!);
      } else {
        await fireStore.collection(path).add(data ?? {});
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  }) async {
    try {
      var data = await fireStore.collection(path).doc(documentId).get();
      return data.data() as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> checkIfDataExist({
    required String path,
    required String documentId,
  }) async {
    try {
      var doc = await fireStore.collection(path).doc(documentId).get();
      return doc.exists;
    } catch (e) {
      return false;
    }
  }
}
