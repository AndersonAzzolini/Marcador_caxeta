import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:untitled/app/models/CreateLogin.dart';

class LoginCreate {
  static final LoginCreate request = LoginCreate();

  Future getHeaders() async {
    Map<String, String> headers = {
      'token': '5e1e612880b960b3ceeee47b35c28eacc9f4e753',
      'Content-Type': 'application/json',
    };
    return headers;
  }
// http://192.168.2.130/Api_marcador/user/create/'
  Future createNewLogin(email, senha) async {
    var url = Uri.parse('https://senac.cotafrete.com/api_marcador/user/create/');

    try {
      http.Response response = await http
          .post(url,
              headers: await getHeaders(),
              body: jsonEncode({"user": email, "password": senha}))
          .timeout(Duration(seconds: 10));
      if (response.statusCode != null) {
        return CreateLogin.fromJson(json.decode(response.body));
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
