import 'package:shared_preferences/shared_preferences.dart';

class SandboxData {
  static String? _userId;
  static String? _gameId;
  static String? _applicationId;

  static String? get userId => _userId;
  static String? get gameId => _gameId;
  static String? get applicationId => _applicationId;

  static void setSandboxData({
    required String userId,
    required String gameId,
    required String applicationId,
  }) async {
    _userId = userId;
    _gameId = gameId;
    _applicationId = applicationId;

    // Store data in SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);
    await prefs.setString('gameId', gameId);
    await prefs.setString('applicationId', applicationId);
  }

  static Future<Map<String, dynamic>?> loadSandboxDataFrom() async {
    // Retrieve data from SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _userId = prefs.getString('userId');
    _gameId = prefs.getString('gameId');
    _applicationId = prefs.getString('applicationId');
    if (_userId == null) return null;
    return {
      'userId': _userId,
      'gameId': _gameId,
      'applicationId': _applicationId,
    };
  }
}
