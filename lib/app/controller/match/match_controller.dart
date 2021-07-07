import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/models/Match_model.dart';
import 'package:untitled/app/service/match_in_progress_service.dart';

class MatchController extends GetxController {

  MatchInProgressService api = MatchInProgressService();

  opcoesJogador(id) {
    Get.bottomSheet(
      Container(
        height: 150,
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              leading: Icon(Icons.edit),
              title: Text(
                "Editar jogador",
                style: GoogleFonts.robotoSlab(
                    color: AppColors.buttons,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => print(id),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text(
                "Excluir jogador ",
                style: GoogleFonts.robotoSlab(
                    color: AppColors.buttons,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => excluiJogador(id),
            ),
          ],
        ),
      ),
    );
  }

  Future editaNomeJogador(id) async {
    print ("TESTE ${id}");
  }

   Future excluiJogador(id) async {
     print(id);
    // final response = await api.deletePlayer(id);
    // return response;
  }
}
