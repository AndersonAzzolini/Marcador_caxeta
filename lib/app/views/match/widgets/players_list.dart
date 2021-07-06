import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/match/match_controller.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/models/Match_model.dart';
import 'package:get/get.dart';

class ListPlayers extends StatelessWidget {
  final MatchController matchController = Get.put(MatchController());

  final List<Jogadores> jogadores;
  final Match_model teste;
  String _groupValue;
  ListPlayers(this.jogadores,
      {this.teste}); //recebe como parâmetro a lista de jogadores

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: jogadores.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.stroke,
                    width: 2.0,
                  ),
                ),
              ),
              child: Table(
                columnWidths: {
                  0: FlexColumnWidth(1.5),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(1),
                  4: FlexColumnWidth(0.5),
                },
                children: [
                  TableRow(children: [
                    Container(
                      height: 61,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            matchController.opcoesJogador(jogadores[index]);
                          },
                          child: Text(
                            jogadores[index].name,
                            style: GoogleFonts.robotoSlab(
                                color: AppColors.buttons,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 61,
                      child: Radio(
                        value: "correu",
                        groupValue: _groupValue,
                        onChanged: (val) {
                          Obx(() => _groupValue = val);
                        },
                      ),
                    ),
                    Container(
                      height: 61,
                      child: Radio(
                        value: "perdeu",
                        groupValue: _groupValue,
                        onChanged: (val) {
                          Obx(() => _groupValue = val);
                          print("radio" +val);
                        },
                      ),
                    ),
                    Container(
                      height: 61,
                      child: Radio(
                        value: "venceu",
                        groupValue: _groupValue,
                        onChanged: (val) {
                          Obx(() => _groupValue = val);
                        },
                      ),
                    ),
                    Container(
                      height: 61,
                      child: Center(
                          child: Text("16",
                              style: GoogleFonts.robotoSlab(
                                  color: AppColors.buttons,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
