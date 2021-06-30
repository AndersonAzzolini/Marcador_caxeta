import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:untitled/app/models/Match_model.dart';
import 'package:untitled/app/models/loginModel.dart';

class MatchCreateService {
  static final MatchCreateService request = MatchCreateService();

  Future getHeaders() async {
    Map<String, String> headers = {
      'token': '5e1e612880b960b3ceeee47b35c28eacc9f4e753',
      'Content-Type': 'application/json',
    };
    return headers;
  }

  Future<Match_model> creatMatchPost(stake, initialPoints, nameMatch, amountPlayers, idUser) async {
    var url =
        Uri.parse('https://senac.cotafrete.com/api_marcador/matchs/create/');
    try {
      http.Response response = await http
          .post(url,
              headers: await getHeaders(),
              body: jsonEncode({
                "stake": stake,
                "name": nameMatch,
                "initialPoints": initialPoints,
                "amountPlayers": amountPlayers,
                "idUser": idUser
              }))
          .timeout(Duration(seconds: 10));
      if (response.statusCode != null) {
        var teste = jsonDecode(response.body);
        return Match_model.fromJson(teste);
       }
    } on TimeoutException catch (e) {
      print('Timeout Error: $e');
    } on SocketException catch (e) {
      print('Socket Error: $e');
      return null;
    } on Error catch (e) {
      print('General Error: $e');
      return null;
    }
    return null;
  }
}
