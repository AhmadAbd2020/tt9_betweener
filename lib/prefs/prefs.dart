import 'package:shared_preferences/shared_preferences.dart';
import 'package:tt9_betweener_challenge/models/user.dart';

class UserPreferencesController {
  static final _instance = UserPreferencesController._();
  late SharedPreferences sharedPreferences;
  factory UserPreferencesController() {
    return _instance;
  }
  UserPreferencesController._();
  Future<void> initSharePrefs() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> saveUser({required User user}) async {
    sharedPreferences.setBool('logged_in', true);

    sharedPreferences.setString('accessToken', "Bearer ${user.token}");
    sharedPreferences.setString('userId', "${user.user!.id}");
    sharedPreferences.setString('userEmail', "${user.user!.email}");
    sharedPreferences.setString('userName', "${user.user!.name}");
  }

  bool get loggedIn => sharedPreferences.getBool('logged_in') ?? false;
  String get token => sharedPreferences.getString('accessToken') ?? "";
  String get userId => sharedPreferences.getString('userId') ?? "";
  String get userName => sharedPreferences.getString('userName') ?? "";
  String get userEmail => sharedPreferences.getString('userEmail') ?? "";
  Future<bool> logout() async {
    return await sharedPreferences.clear();
  }
}
