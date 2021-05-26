import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/app/models/InfoMatch.dart';
import 'package:untitled/app/service/Request.dart';

class MatchCreateController extends GetxController {
  TextEditingController playersController = TextEditingController();
  TextEditingController pointsController = TextEditingController();
  Request api = Request();
  RxBool personalizarNomes = false.obs;
  RxBool sortear = false.obs;

  List<PlayersPoints> playersPoints;//CRIA UM NOVA LISTA PARA ARMAZENAR O RETORNO DA API

  bool toggle(checked) {
    if (checked.value == true) {
      return false;
    }
    return true;
  }

  Future<List<MatchInfo>> getList() async {
    playersPoints = await api.getMatchInfo();
  }

  @override
  void onInit() async {
    // É a mesma coisa que initState()
    super.onInit();
    await getList();//quando iniciar esse controlador, já busca na API as informações
  }
}
