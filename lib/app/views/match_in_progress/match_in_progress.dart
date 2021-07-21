import 'package:flutter/material.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/models/partidaPorId.dart';
import 'package:untitled/app/views/match_in_progress/widgets/cashinfo_buttons.dart';
import 'package:untitled/app/views/match_in_progress/widgets/info_header.dart';
import 'package:untitled/app/views/match_in_progress/widgets/players_list.dart';

class MatchInProgressId extends StatelessWidget {
  partidaPorId partida;
  String nomePartida;
  MatchInProgressId(this.partida, this.nomePartida);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nomePartida),
        backgroundColor: AppColors.buttons,
      ),
      backgroundColor: AppColors.background,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 2),
            ListPlayers(partida), //envia a lista de jogadores para o widget
            CashInfoButtons(partida.partida),
          ],
        ),
      ),
    );
  }
}
