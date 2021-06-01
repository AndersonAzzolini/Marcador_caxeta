import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/app/models/InfoCash.dart';
import 'package:untitled/app/service/Request.dart';

class MatchCreateController extends GetxController {
  TextEditingController playersController = TextEditingController();
  TextEditingController pointsController = TextEditingController();
  Request api = Request();
  dynamic bolo = 0.obs;
  InfoCash infocash; //CRIA UM NOVA LISTA PARA ARMAZENAR O RETORNO DA API

  getList() async {
    infocash = await api.getMatchInfo();
    print(jsonEncode(infocash).toString());
    bolo = int.parse(infocash.currentStake);
  }

  @override
  void onInit() async {
    // É a mesma coisa que initState()
    super.onInit();
    await getList(); //quando iniciar esse controlador, já busca na API as informações
  }
}
