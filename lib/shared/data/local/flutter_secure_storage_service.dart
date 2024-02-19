import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:halpay/shared/data/local/storage_service.dart';

class FlutterSecureStorageService implements StorageService {
  FlutterSecureStorage? secureStorage;


  @override
  void init() {
    secureStorage = const FlutterSecureStorage();
  }

  @override
  bool get hasInitialized => secureStorage != null;

  @override
  Future<void> clear() async {
    return await secureStorage!.deleteAll();
  }

  @override
  Future<Object?> get(String key) async {
    return await secureStorage!.read(key: key);
  }

  @override
  Future<bool> has(String key) async {
    return await secureStorage!.containsKey(key: key);
  }

  @override
  Future<bool> remove(String key) async {
    try {
      await secureStorage!.delete(key: key);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> set(String key, String data) async {
    try {
      await secureStorage!.write(key: key, value: data);

      return true;
    } catch (e) {
      return false;
    }
  }
}
