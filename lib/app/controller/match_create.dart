import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/app/models/Match_model.dart';
import 'package:untitled/app/service/Match_create_service.dart';

class MatchCreateController extends GetxController {
  TextEditingController playersController = TextEditingController();
  TextEditingController pointsController = TextEditingController();
  TextEditingController nameMatchController = TextEditingController();
  TextEditingController stakeMatchController = TextEditingController();

  MatchCreateService api = MatchCreateService();
  
  var stake;
  var initialPoints;
  var nameMatch;
  var amountPlayers;

  Future<Match_model> criacaoPartida(idUser) async {
    stake = stakeMatchController.text;
    nameMatch = nameMatchController.text;
    initialPoints = pointsController.text;
    amountPlayers = playersController.text;

    var response = await api.creatMatchPost(
        stake, initialPoints, nameMatch, amountPlayers, idUser);
    print(response);
  }

  // teste(idUser) {
  //   print(idUser);

  //   print(model.nameMatch + " " + model.amountPlayers.toString());
  // }

  // getList() async {
  //   infocash = await api.getMatchInfo();
  //   bolo = int.parse(infocash.currentStake);
  //   print(jsonEncode(infocash).toString());
  // }

  // void onInit() async {
  //   // É a mesma coisa que initState()
  //   await getList();
  //   super.onInit();
  //   //quando iniciar esse controlador, já busca na API as informações
  // }
}
