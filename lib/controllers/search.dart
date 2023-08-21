import 'package:tt9_betweener_challenge/api/api.dart';
import 'package:tt9_betweener_challenge/utilis/constants.dart';

class Search {
  Future<List<dynamic>> searchByName({required String name}) async {
    var res = await Api().post(url: serachUrl, body: {'name': name});
    List<dynamic> data = res['user'];

    return data;
  }
}
