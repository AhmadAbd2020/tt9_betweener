import 'package:tt9_betweener_challenge/prefs/prefs.dart';

import '../models/user.dart';

Future<User> getLocalUser() async {
  UserPreferencesController prefsController =
      UserPreferencesController.instance;
  if (prefsController.sharedPreferences.containsKey('user')) {
    String userJson = prefsController.sharedPreferences.getString('user')!;
    return userFromJson(userJson);
  }

  return Future.error('not found');
}
