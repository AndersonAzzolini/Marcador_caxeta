import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:untitled/app/models/match_in_progress_model.dart';

class MatchInProgressService {
  static final MatchInProgressService request = MatchInProgressService();

  Future getHeaders() async {
    Map<String, String> headers = {
      'token': '5e1e612880b960b3ceeee47b35c28eacc9f4e753',
      'Content-Type': 'application/json',
    };
    return headers;
  }

  Future<List<InProgressMatch>> getInprogress(idUser) async {
    var url = Uri.parse(
        'https://senac.cotafrete.com/api_marcador/matchs/matchsInProgress/id/'+idUser.toString());
    try {
      http.Response response = await http
          .get(url, headers: await getHeaders())
          .timeout(Duration(seconds: 10));
      print(response.body);
      if (response.statusCode == 200) {
        List<InProgressMatch> inProgress = json
            .decode(response.body)
            .map<InProgressMatch>((map) => InProgressMatch.fromJson(map))
            .toList();
        return inProgress;
      }
    } on TimeoutException catch (e) {
      print('Timeout Error: $e');
    } on SocketException catch (e) {
      print('Socket Error: $e');
    } on Error catch (e) {
      print('General Error: $e');
    }
    return null;
  }
}
