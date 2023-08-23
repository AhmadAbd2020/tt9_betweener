import 'package:tt9_betweener_challenge/prefs/prefs.dart';

Future<String> getLocalUserName() async {
  UserPreferencesController prefsController = UserPreferencesController();
  if (prefsController.sharedPreferences.containsKey('userName')) {
    String userJson = prefsController.sharedPreferences.getString('userName')!;
    return userJson;
  }

  return Future.error('not found User Name');
}
