import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/match/match_create.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/models/partidaPorId.dart';

class CashInfoButtons extends StatelessWidget {
  final MatchCreateController _matchCreateController =
      Get.put(MatchCreateController());
  List<Partida> partida;
  CashInfoButtons(this.partida);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          height: 180,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rodada atual: "+partida[index].currentRound,
                        style: GoogleFonts.robotoSlab(
                            color: AppColors.buttons,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Carteiro:",
                        style: GoogleFonts.robotoSlab(
                            color: AppColors.buttons,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Bolo atual: "+ partida[index].currentStake,
                        style: GoogleFonts.robotoSlab(
                            color: AppColors.buttons,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 65,
                    width: 150,
                    child: TextButton(
                      child: Text("Oções da partida",
                          style: GoogleFonts.robotoSlab(
                              color: Colors.white, fontSize: 16)),
                      onPressed: () {
                        Get.bottomSheet(
                          Container(
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  color: Colors.white,
                                  child: Container(
                                    child: ListTile(
                                      leading: Icon(Icons.hourglass_bottom),
                                      title: Text(
                                        "Histórico",
                                        style: GoogleFonts.robotoSlab(
                                            color: AppColors.buttons,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onTap: () => print("teste"),
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  child: Container(
                                    child: ListTile(
                                      leading: Icon(Icons.money),
                                      title: Text(
                                        "Compras",
                                        style: GoogleFonts.robotoSlab(
                                            color: AppColors.buttons,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(AppColors.buttons),
                      ),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 150,
                    child: TextButton(
                      child: Text("Próxima rodada",
                          style: GoogleFonts.robotoSlab(
                              color: Colors.white, fontSize: 17)),
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(AppColors.buttons),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
