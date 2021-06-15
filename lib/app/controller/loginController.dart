import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/app/models/loginModel.dart';
import 'package:untitled/app/service/User_request.dart';
import 'package:untitled/app/views/home_options/home_options.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  UserRequest api = UserRequest();
  dynamic response;
  getLogin() async {
   loginModel response = await api.getLogin(emailController.text, senhaController.text);
  print(response.idUser);
  response.status == true ? Get.to(HomePageOptions()) : print('errou a senha');
  }
}
