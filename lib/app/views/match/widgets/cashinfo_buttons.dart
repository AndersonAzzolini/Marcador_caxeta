import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/match_create.dart';
import 'package:untitled/app/core/appColors.dart';

class CashInfoButtons extends StatelessWidget {
  final MatchCreateController _matchCreateController =
      Get.put(MatchCreateController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 180,
              child: Obx(
                () => _matchCreateController.isLoading
                
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rodada atual: " +
                                _matchCreateController.bolo.toString(),
                            style: GoogleFonts.robotoSlab(
                                color: AppColors.buttons,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Carteiro: Azzoza",
                            style: GoogleFonts.robotoSlab(
                                color: AppColors.buttons,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Bolo atual: " +
                                _matchCreateController.infocash.currentStake,
                            style: GoogleFonts.robotoSlab(
                                color: AppColors.buttons,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 65,
                width: 175,
                child: TextButton(
                  child: Text("Oções da partida",
                      style: GoogleFonts.robotoSlab(
                          color: Colors.white, fontSize: 18)),
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
                                        fontSize: 25,
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
                                        fontSize: 25,
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
                width: 175,
                child: TextButton(
                  child: Text("Próxima rodada",
                      style: GoogleFonts.robotoSlab(
                          color: Colors.white, fontSize: 18)),
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
  }
}
