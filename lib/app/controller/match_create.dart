import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/app/models/InfoCash.dart';
import 'package:untitled/app/service/Request.dart';

class MatchCreateController extends GetxController {
  TextEditingController playersController = TextEditingController();
  TextEditingController pointsController = TextEditingController();
  Request api = Request();
  var bolo = 0.obs();
  var isLoading = true.obs();
  InfoCash infocash; //CRIA UM NOVA LISTA PARA ARMAZENAR O RETORNO DA API

  getList() async {
    infocash = await api.getMatchInfo();
    bolo = int.parse(infocash.currentStake);
    print(jsonEncode(infocash).toString());
    isLoading = false;
  }

  
  @override
  void onInit() async {
    // É a mesma coisa que initState()
    await getList();
    super.onInit();
    //quando iniciar esse controlador, já busca na API as informações
  }
}
