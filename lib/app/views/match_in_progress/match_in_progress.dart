import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/match/match_in_progress_controller.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/models/match_in_progress_model.dart';
import 'package:untitled/app/views/match_in_progress/widgets/cards_widgets.dart';
import 'package:get/get.dart';

class MatchInProgress extends StatelessWidget {
  final MatchInProgressController matchInProgressController =
      Get.put(MatchInProgressController());
      InProgressMatch teste;
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
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text("teste"),
              onPressed: () =>
                  { matchInProgressController.teste()},
            ),
            Container(
              child: ListView.builder(
                  itemCount: 1,
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
                                        borderRadius:
                                            BorderRadius.circular(30.0),
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
                                                "Criado: ",
                                                style: GoogleFonts.robotoSlab(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontStyle:
                                                        FontStyle.italic),
                                              ),
                                              Text(
                                                "Participantes: 6 ",
                                                style: GoogleFonts.robotoSlab(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontStyle:
                                                        FontStyle.italic),
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
          ],
        ),
      ),
    );
  }
}
