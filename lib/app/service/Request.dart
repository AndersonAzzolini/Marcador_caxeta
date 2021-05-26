import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:untitled/app/models/InfoMatch.dart';

class Request {
  static final Request request = Request();
  var cabecalho =
      Uri.parse('https://estacionamientodigital.com.py/anderson.json');

  Future getHeaders() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    return headers;
  }

  // Future<List<MatchInfo>> getMatchInfo() async {
  //   Uri url = Uri.http(cabecalho, '/Api_marcador/matchs/infos/id/5');
  //   try {
  //     final response = await http.get(
  //       url,
  //       headers: getHeadres(),
  //     );
  //     print(url.toString());
  //     // List<MatchInfo> data = List<MatchInfo>.from(
  //     //     json.decode(response.body).map((model) => MatchInfo.fromJson(model)));
  //     print(response.body);
  //     // return data;
  //   } catch (e) {
  //     print('não acessou');
  //     print(e.toString());
  //   }
  // }
  Future<List<PlayersPoints>> getMatchInfo() async {
    try {
      http.Response response = await http
          .get(cabecalho, headers: await getHeaders())
          .timeout(Duration(seconds: 25));
      if (response.statusCode == 200) {
        return json
            .decode(response.body)['Players_points']
            .map((val) => PlayersPoints.fromJson(val))
            .toList();
      } else {
        return null;
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
