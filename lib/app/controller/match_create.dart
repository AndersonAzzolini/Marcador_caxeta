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

  bool toggle(checked) {
    if (checked.value == true) {
      return false;
    }
    return true;
  }

  Future<List<MatchInfo>> getList() async {
    api.getMatchInfo();
  }
}
