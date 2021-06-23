import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/models/CreateLogin.dart';
import 'package:untitled/app/service/Login_create.dart';

class LoginCreateController extends GetxController {
  final TextEditingController senha = TextEditingController();
  final TextEditingController confirmaSenha = TextEditingController();
  final TextEditingController email = TextEditingController();
  LoginCreate api = LoginCreate();
  dynamic response;

  showLoader() {
    Get.dialog(
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }

  Future<CreateLogin> createLogin() async {
    showLoader();
    response = await Future.delayed(Duration(microseconds: 100),
        () => api.createNewLogin(email.text, senha.text));
    if (response.status == true) {
      Get.back();
      Get.defaultDialog(
          confirm: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Ok")),
          title: ("Excelente!"),
          titleStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          middleTextStyle: TextStyle(fontSize: 15),
          middleText: ("Usuário criado com sucesso!"));
    } else {
      Get.back();
      Get.defaultDialog(
          confirm: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Ok")),
          title: ("Barbaridade!"),
          titleStyle: TextStyle(fontSize: 22,),
          middleTextStyle: TextStyle(fontSize: 15),
          middleText: ("Email já cadastrado no sistema"));
    }
  }
}
