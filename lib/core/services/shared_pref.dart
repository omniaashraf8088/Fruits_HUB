import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
 
  
  // Private constructor
  SharedPref._();

  // Singleton instance
  static SharedPref? _instance;
  static Future<SharedPref> init() async {
    return getInstance(); 
  }

  // Shared preferences instance
  static SharedPreferences? _preferences;

  // Get singleton instance
  static Future<SharedPref> getInstance() async {
    // Return instance if already initialized
    if (_instance != null) return _instance!;

    // Create new instance
    _instance = SharedPref._();

    // Initialize preferences
    _preferences = await SharedPreferences.getInstance();

    return _instance!;
  }

  // String operations
  Future<bool> setString(String key, String value) async {
    return await _preferences!.setString(key, value);
  }

  String? getString(String key) {
    return _preferences!.getString(key);
  }

  // Boolean operations
  Future<bool> setBool(String key, bool value) async {
    return await _preferences!.setBool(key, value);
  }

  bool? getBool(String key) {
    return _preferences!.getBool(key);
  }

  // Integer operations
  Future<bool> setInt(String key, int value) async {
    return await _preferences!.setInt(key, value);
  }

  int? getInt(String key) {
    return _preferences!.getInt(key);
  }

  // Double operations
  Future<bool> setDouble(String key, double value) async {
    return await _preferences!.setDouble(key, value);
  }

  double? getDouble(String key) {
    return _preferences!.getDouble(key);
  }

  // String list operations
  Future<bool> setStringList(String key, List<String> value) async {
    return await _preferences!.setStringList(key, value);
  }

  List<String>? getStringList(String key) {
    return _preferences!.getStringList(key);
  }

  // Check if key exists
  bool containsKey(String key) {
    return _preferences!.containsKey(key);
  }

  // Remove a key
  Future<bool> remove(String key) async {
    return await _preferences!.remove(key);
  }

  // Clear all data
  Future<bool> clear() async {
    return await _preferences!.clear();
  }
}
