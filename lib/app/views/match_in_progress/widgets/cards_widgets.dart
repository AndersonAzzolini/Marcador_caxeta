import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/core/appColors.dart';

class MatchCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
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
                                          color: Colors.white, fontSize: 28)),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
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
    );
  }
}
