import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Storage {
  final _storage = FlutterSecureStorage();

  Future writeData(String key, String value) async {
    var writeData = await _storage.write(key: key, value: value);
    return writeData;
  }

  Future readData(String key) async {
    var readData = await _storage.read(key: key);
    return readData;
  }

  Future deleteData(String key) async {
    var deleteData = await _storage.delete(key: key);
    return deleteData;
  }

  Future deleteAll() async {
    var deleteData = await _storage.deleteAll();
    return deleteData;
  }
}
