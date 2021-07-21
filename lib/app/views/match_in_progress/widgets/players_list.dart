import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';
import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/match/match_controller.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:get/get.dart';
import 'package:untitled/app/models/partidaPorId.dart';

class ListPlayers extends StatefulWidget {
  final partidaPorId partida;

  ListPlayers(this.partida);
  @override
  _ListPlayersState createState() => _ListPlayersState();
}

class _ListPlayersState extends State<ListPlayers> {
  final MatchController matchController = Get.put(MatchController());
  List<String> radioValues = [];
  int groupValue1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width *1.35,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.partida.jogadores.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 61,
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              matchController
                                  .opcoesJogador(widget.partida.jogadores[index]);
                            },
                            child: Text(
                              widget.partida.jogadores[index].namePlayer,
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
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: CustomRadioButton(
                          width: MediaQuery.of(context).size.width * 0.11,
                          enableShape: true,
                          customShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                        horizontal: false,                      
                          spacing: 5,
                          unSelectedColor: Theme.of(context).canvasColor,
                          buttonLables: [
                            '    ....;',
                            '    ..',
                            '    ...',
                          ],
                          buttonValues: [
                            "Correu",
                            "Perdeu",
                            "Ganhou",
                          ],
                          buttonTextStyle: ButtonTextStyle(
                              
                              selectedColor: Colors.white,
                              unSelectedColor: Colors.black,
                              textStyle: TextStyle(fontSize: 1)),
                          radioButtonValue: (value) {
                            print(value);
                          },
                          selectedColor: AppColors.buttons,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.stroke,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
