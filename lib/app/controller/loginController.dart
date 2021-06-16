import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    loginModel response =
        await api.getLogin(emailController.text, senhaController.text);
    if (response.status == true) {
      Get.to(HomePageOptions(int.parse(response.idUser)));
    } else {
      Get.defaultDialog(
        confirm: TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Ok")),
        title: ("Erro ao realizar login"),
        titleStyle: TextStyle(fontSize: 22),
        middleTextStyle:TextStyle(fontSize: 15),
        middleText:("Usuário ou senha incorretos")
      );
    }
  }
}
