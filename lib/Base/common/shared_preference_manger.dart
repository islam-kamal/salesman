import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceManager {
  SharedPreferences? sharedPreferences;

  Future<bool> removeData(CachingKey key) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences!.remove(key.value);
  }

  Future<Future> writeData(CachingKey key, value) async {
    sharedPreferences = await SharedPreferences.getInstance();
    Future? returnedValue;
    if (value is String) {
      returnedValue = sharedPreferences!.setString(key.value, value);
    } else if (value is int) {
      returnedValue = sharedPreferences!.setInt(key.value, value);
    } else if (value is bool) {
      returnedValue = sharedPreferences!.setBool(key.value, value);
    } else if (value is double) {
      returnedValue = sharedPreferences!.setDouble(key.value, value);
    } else if (value is List<String>) {
      returnedValue = sharedPreferences!.setStringList(key.value, value);
    } else {
      return Future.error(NotValidCacheTypeException());
    }
    return returnedValue;
  }

  Future<List<String>> readListString(CachingKey key) async {
    sharedPreferences = await SharedPreferences.getInstance();

    return Future.value(sharedPreferences!.getStringList(key.value) ?? []);
  }

  Future<String> readString(CachingKey key) async {
    sharedPreferences = await SharedPreferences.getInstance();

    return Future.value(
        sharedPreferences!.getString(key.value).toString() ?? "");
  }

  Future<int> readInt(CachingKey key) async {
    sharedPreferences = await SharedPreferences.getInstance();

    return Future.value(sharedPreferences!.getInt(key.value));
  }
}

class NotValidCacheTypeException implements Exception {
  String message() => "Not a valid cahing type";
}

abstract class Enum<T> {
  final T _value;

  const Enum(this._value);

  T get value => _value;
}

class CachingKey extends Enum<String> {
  const CachingKey(String val) : super(val);
  static const CachingKey APP_LANGUAGE = const CachingKey('APP_LANGUAGE');
  static const CachingKey AUTH_TOKEN = CachingKey('AUTH_TOKEN');
  static const CachingKey DEVICE_TOKEN = CachingKey('DEVICE_TOKEN');

  static const CachingKey FRIST_TIME = const CachingKey('FRIST_TIME');
  static const CachingKey FRIST_LOGIN = const CachingKey('FRIST_LOGIN');
  static const CachingKey USER_ID = const CachingKey('USER_ID');
}

final sharedPreferenceManager = SharedPreferenceManager();