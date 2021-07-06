import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class MatchService {
  static final MatchService request = MatchService();

  Future getHeaders() async {
    Map<String, String> headers = {
      'token': '5e1e612880b960b3ceeee47b35c28eacc9f4e753',
      'Content-Type': 'application/json',
    };
    return headers;
  }

  Future deletePlayer(idUser) async {
    var url = Uri.parse(
        'https://senac.cotafrete.com/api_marcador/matchs/playerDelete/');
    try {
      http.Response response = await http
          .post(url,
              headers: await getHeaders(), body: jsonEncode({"id": idUser}))
          .timeout(Duration(seconds: 10));
      if (response.statusCode == 200) {
        // return Match_model.fromJson(jsonDecode(response.body));
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
