import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:tt9_betweener_challenge/prefs/prefs.dart';

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url), headers: {
      HttpHeaders.authorizationHeader: UserPreferencesController.instance.token
    });
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {}
  }

  Future<dynamic> post({required String url, dynamic body}) async {
    http.Response response = await http
        .post(Uri.parse(url), body: body, headers: {
      HttpHeaders.authorizationHeader: UserPreferencesController.instance.token
    });
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {}
  }

  Future<dynamic> put({required String url, dynamic body}) async {
    http.Response response = await http
        .put(Uri.parse(url), body: body, headers: {
      HttpHeaders.authorizationHeader: UserPreferencesController.instance.token
    });
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {}
  }

  Future<dynamic> delete({required String url, dynamic body}) async {
    http.Response response = await http
        .delete(Uri.parse(url), body: body, headers: {
      HttpHeaders.authorizationHeader: UserPreferencesController.instance.token
    });
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {}
  }
}
