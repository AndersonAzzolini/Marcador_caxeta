import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/app/models/Match_model.dart';
import 'package:untitled/app/models/match_in_progress_model.dart';
import 'package:untitled/app/models/partidaPorId.dart';
import 'package:untitled/app/service/match_in_progress_service.dart';

class MatchInProgressController extends GetxController {
  TextEditingController playersController = TextEditingController();
  TextEditingController pointsController = TextEditingController();
  TextEditingController nameMatchController = TextEditingController();
  TextEditingController stakeMatchController = TextEditingController();

  MatchInProgressService api = MatchInProgressService();

  Future<partidaPorId>buscaPartidaPorId(idMatch) async {
    return await api.getMatchInProgressId(idMatch);

  }

  Future<List<InProgressMatch>> buscarPartidasEmAndamento(idUser) async {
    return await api.getInprogress(idUser);
  }
}
