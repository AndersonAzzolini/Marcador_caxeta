import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:untitled/app/models/loginModel.dart';

class UserRequest {
  static final UserRequest request = UserRequest();

  var cabecalho = Uri.parse('https://senac.cotafrete.com/api_marcador/user/');

  Future getHeaders() async {
    Map<String, String> headers = {
      'token': '5e1e612880b960b3ceeee47b35c28eacc9f4e753',
      'Content-Type': 'application/json',
    };
    return headers;
  }

  Future<loginModel> getLogin(email, senha) async {
    var url = Uri.parse('https://senac.cotafrete.com/api_marcador/user/login/');

    try {
      http.Response response = await http
          .post(url,
              headers: await getHeaders(),
              body: jsonEncode({"user": email, "password": senha}))
          .timeout(Duration(seconds: 10));
      print(response.body);
      if (response.statusCode == 200) {
        return loginModel.fromJson(json.decode(response.body));
      } else {
        return loginModel.fromJson(json.decode(response.body));
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
    print('caiu no nukk');
    return null;
  }
}
