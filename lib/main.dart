import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/views/home/home.dart';
import 'package:untitled/app/views/login/login.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //retorna GetMaterialApp para possibilitar utilizar os benefícios do Getx
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      color: Colors.red, //direciona sempre para a tela de Splash
      locale: Get.deviceLocale, // define a tradução baseado na localização
      fallbackLocale: Locale('pt_BR', 'en_US'),
    );
  }
}
