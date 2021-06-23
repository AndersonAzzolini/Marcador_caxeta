import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:untitled/app/models/InfoCash.dart';
import 'package:untitled/app/models/InfoMatch.dart';

class Request {
  static final Request request = Request();
  var cabecalho = Uri.parse(
      'https://senac.cotafrete.com/api_marcador/matchs/InfoCash/id/5');

  Future getHeaders() async {
    Map<String, String> headers = {
      'token': '5e1e612880b960b3ceeee47b35c28eacc9f4e753',
      'Content-Type': 'application/json',
    };
    return headers;
  }

  Future getMatchInfo() async {
    try {
      http.Response response = await http
          .get(cabecalho, headers: await getHeaders())
          .timeout(Duration(seconds: 25));
      if (response.statusCode == 200) {
      return InfoCash.fromJson(jsonDecode(response.body));
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
