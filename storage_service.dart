import 'package:flutter/foundation.dart' show kIsWeb;
// dart:io and path_provider are native-only; StorageService is only called in non-mock (real Firebase) mode
import 'package:firebase_storage/firebase_storage.dart';
import '../utils/app_exception.dart';


class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> uploadCardImage(String guardianId, String cardId, dynamic file) async {
    if (kIsWeb) throw StorageException('Image upload not supported on web');
    try {
      final ref = _storage.ref().child('users/$guardianId/cards/$cardId.jpg');
      // ignore: avoid_dynamic_calls
      final uploadTask = await ref.putData(await file.readAsBytes());
      final downloadUrl = await uploadTask.ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      throw StorageException("Failed to upload image to Firebase Storage", details: e);
    }
  }

  Future<void> deleteCardImage(String guardianId, String cardId) async {
    try {
      final ref = _storage.ref().child('users/$guardianId/cards/$cardId.jpg');
      await ref.delete();
    } catch (e) {
      // If the image doesn't exist on server, we ignore
      print("Delete storage image error: $e");
    }
  }

  Future<String> saveImageLocally(String cardId, dynamic file) async {
    if (kIsWeb) throw StorageException('Local file saving not supported on web');
    // Native-only: uses dart:io and path_provider at runtime
    throw StorageException('Local image save requires native platform libraries');
  }
}
