// ignore_for_file: avoid_print

import 'package:tt9_betweener_challenge/api/api.dart';
import 'package:tt9_betweener_challenge/utilis/constants.dart';
import 'package:tt9_betweener_challenge/models/follow_num.dart';

class FollowController {
  Future<Follow> getFollow() async {
    var data = await Api().get(url: followUrl);
    return Follow.fromJson(data);
  }

  Future<dynamic> addFollow({required String id}) async {
    var data = await Api().post(url: followUrl, body: {'followee_id': id});
    print(data);
  }
}
