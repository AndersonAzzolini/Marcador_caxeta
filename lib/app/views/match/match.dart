import 'package:flutter/material.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/models/Match_model.dart';
import 'package:untitled/app/views/match/widgets/cashinfo_buttons.dart';
import 'package:untitled/app/views/match/widgets/info_header.dart';
import 'package:untitled/app/views/match/widgets/players_list.dart';

class Match extends StatelessWidget {
  Match_model partida;

  Match(this.partida);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(partida.partida.name),
        backgroundColor: AppColors.buttons,
      ),
      backgroundColor: AppColors.background,
      body: Container(
        child: Column(
          children: [
            InfoHeader(),
            SizedBox(height: 2),
            ListPlayers(
                partida.jogadores), //envia a lista de jogadores para o widget
            CashInfoButtons(),
          ],
        ),
      ),
    );
  }
}
