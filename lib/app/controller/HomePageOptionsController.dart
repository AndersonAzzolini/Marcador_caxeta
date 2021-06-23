import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:untitled/app/views/login/login.dart';

class HomePageOptionsController extends GetxController {
  Future<bool> onWillPop() async {
    return Get.defaultDialog(
        confirm: TextButton(
            onPressed: () {
              Get.to(Login());
              return true;
            },
            child: Text("Ok")),
        cancel: TextButton(
            onPressed: () {
              Get.back();
              return false;
            },
            child: Text("Cancelar")),
        title: ("Não acredito !!"),
        titleStyle: TextStyle(fontSize: 22),
        middleTextStyle: TextStyle(fontSize: 15),
        middleText: ("Tem certeza que deseja sair?"));
  }
}
