import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  factory SharedPreferencesHelper() => _instance;

  SharedPreferencesHelper._internal();

  static final SharedPreferencesHelper _instance = SharedPreferencesHelper._internal();
  static SharedPreferences? _sharedPreferences;

  Future<SharedPreferences> get sharedPreferences async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    return _sharedPreferences!;
  }
}
