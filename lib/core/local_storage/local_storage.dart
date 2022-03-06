//use I to indentify this is a interface
import 'package:shared_preferences/shared_preferences.dart';

abstract class ILocalStorage {
  Future<void> setString({required String key, required String value});
  Future<void> setInt({required String key, required int value});
  Future<void> setBool({required String key, required bool value});
  Future<void> setDouble({required String key, required double value});

  Future<String> getString({required String key});
  Future<int> getInt({required int key, required int value});
  Future<bool> getBool({required bool key, required bool value});
  Future<double> getDouble({required double key, required double value});
}

class LocalStorage implements ILocalStorage {
  final SharedPreferences _preferences;

  LocalStorage({required SharedPreferences preferences}) : _preferences = preferences;

  @override
  Future<bool> getBool({required bool key, required bool value}) {
    // TODO: implement getBool
    throw UnimplementedError();
  }

  @override
  Future<double> getDouble({required double key, required double value}) {
    // TODO: implement getDouble
    throw UnimplementedError();
  }

  @override
  Future<int> getInt({required int key, required int value}) {
    // TODO: implement getInt
    throw UnimplementedError();
  }

  @override
  Future<String> getString({required String key}) {
    // TODO: implement getString
    throw UnimplementedError();
  }

  @override
  Future<void> setBool({required String key, required bool value}) {
    // TODO: implement setBool
    throw UnimplementedError();
  }

  @override
  Future<void> setDouble({required String key, required double value}) {
    // TODO: implement setDouble
    throw UnimplementedError();
  }

  @override
  Future<void> setInt({required String key, required int value}) {
    // TODO: implement setInt
    throw UnimplementedError();
  }

  @override
  Future<void> setString({required String key, required String value}) {
    // TODO: implement setString
    throw UnimplementedError();
  }
}
