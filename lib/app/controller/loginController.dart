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
  RxBool isLoading = false.obs;

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

  getLogin() async {
    LoginModel response = await Future.delayed(Duration(microseconds: 100),
        () => api.getLogin(emailController.text, senhaController.text));
    if (response.status == true) {
      Get.to(HomePageOptions(int.parse(response.idUser)));
    } else {
      Get.back();
      Get.defaultDialog(
          confirm: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Ok")),
          title: ("Erro ao realizar login"),
          titleStyle: TextStyle(fontSize: 22),
          middleTextStyle: TextStyle(fontSize: 15),
          middleText: ("Usuário ou senha incorretos"));
    }
  }
}
