import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/views/match_in_progress/widgets/cards_widgets.dart';

class MatchInProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("Partidas em andamento"),
        backgroundColor: AppColors.buttons,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: ListView.builder(
              itemCount: 15,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  color: AppColors.buttons,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Partidas passadas",
                                          style: GoogleFonts.robotoSlab(
                                              color: Colors.white,
                                              fontSize: 20)),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Criado: 20/02/2021",
                                            style: GoogleFonts.robotoSlab(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontStyle: FontStyle.italic),
                                          ),
                                          Text(
                                            "Participantes: 6 ",
                                            style: GoogleFonts.robotoSlab(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
