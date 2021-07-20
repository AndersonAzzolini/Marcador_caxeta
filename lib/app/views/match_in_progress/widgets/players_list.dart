import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/match/match_controller.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:get/get.dart';
import 'package:untitled/app/models/partidaPorId.dart';

class ListPlayers extends StatefulWidget {
  final List<Jogadores> jogadores;

  ListPlayers(this.jogadores);
  @override
  _ListPlayersState createState() => _ListPlayersState();
}

class _ListPlayersState extends State<ListPlayers> {
  final MatchController matchController = Get.put(MatchController());
List<String> radioValues = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.jogadores.length,
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
                            matchController
                                .opcoesJogador(widget.jogadores[index]);
                          },
                          child: Text(
                            widget.jogadores[index].namePlayer,
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
                        groupValue: "correu" + index.toString(),
                        onChanged: (val) {
                      
                        },
                      ),
                    ),
                    Container(
                      height: 61,
                      child: Radio(
                        value: "perdeu" + index.toString(),
                        groupValue: "perdeu" + index.toString(),
                        onChanged: (val) {
                          setState(() {
                          });
                        },
                      ),
                    ),
                    Container(
                      height: 61,
                      child: Radio(
                        value: "venceu"+index.toString(),
                        groupValue: "venceu"+index.toString(),
                        onChanged: (val) {
                          setState(() {

                          });
                        },
                      ),
                    ),
                    Container(
                      height: 61,
                      child: Center(
                          child: Text("",
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
