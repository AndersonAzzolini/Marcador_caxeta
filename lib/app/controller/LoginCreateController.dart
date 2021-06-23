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

  createLogin() async {
    CreateLogin response = await api.createNewLogin(email.text, senha.text);
     if(response.status == true){
       print(response.response);
     }else{
       print(response.status);
     }
  }
}

