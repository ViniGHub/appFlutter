import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDataSource {
  late SharedPreferences _preferences;

  initPreference() async {
    _preferences = await SharedPreferences.getInstance();
  }

  save(String key, String value) {
    _preferences.setString(key, value);
  }
}
