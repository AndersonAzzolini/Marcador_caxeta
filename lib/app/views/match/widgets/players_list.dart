import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/models/Match_model.dart';

class ListPlayers extends StatelessWidget {
  final List<Jogadores> jogadores;
  final Match_model teste;
  ListPlayers(this.jogadores, {this.teste}); //recebe como parâmetro a lista de jogadores

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
                        child: Text(
                          jogadores[index].name,
                          style: GoogleFonts.robotoSlab(
                              color: AppColors.buttons,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 61,
                      child: Radio(
                        value: 1,
                        groupValue: 1,
                        onChanged: (val) {
                          print("Radio ${val}");
                        },
                      ),
                    ),
                    Container(
                      height: 61,
                      child: Radio(
                        value: 2,
                        groupValue: 1,
                        onChanged: (val) {
                          print("Radio ${val}");
                        },
                      ),
                    ),
                    Container(
                      height: 61,
                      child: Radio(
                        value: 3,
                        groupValue: 1,
                        onChanged: (val) {
                          print("Radio ${val}");
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
