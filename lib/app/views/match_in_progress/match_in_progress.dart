import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/match/match_in_progress_controller.dart';
import 'package:untitled/app/core/appColors.dart';

import 'package:get/get.dart';
import 'package:untitled/app/models/match_in_progress_model.dart';

class MatchInProgress extends StatelessWidget {
  final MatchInProgressController matchInProgressController =
      Get.put(MatchInProgressController());
  int idUser;
  MatchInProgress(this.idUser);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("Partidas em andamento"),
        backgroundColor: AppColors.buttons,
      ),
      body: FutureBuilder<List<InProgressMatch>>(
        future: matchInProgressController.buscarPartidasEmAndamento(idUser),
        builder: (context, index) {
          switch (index.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.active:
            case ConnectionState.done:
              if (index.data != null && index.data.isNotEmpty) {
                return ListView.builder(
                  itemCount: index.data.length,
                  itemBuilder: (context, key) {
                    InProgressMatch inProgressMatch =
                        List<InProgressMatch>.from(index.data)[key];
                    return TextButton(
                      onPressed: () => {print(inProgressMatch.id)},
                      child: SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.buttons,
                              borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(inProgressMatch.name,
                                  style: GoogleFonts.robotoSlab(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Criado em:" +
                                            inProgressMatch.dateCreate,
                                        style: GoogleFonts.robotoSlab(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontStyle: FontStyle.italic),
                                      ),
                                      Text(
                                        "Participantes: " +
                                            inProgressMatch.amountPlayers,
                                        style: GoogleFonts.robotoSlab(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontStyle: FontStyle.italic),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                    // return Card(
                    //   child: ListTile(
                    //     title: Text(inProgressMatch.name),
                    //     subtitle: Column(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Row(
                    //           children: [
                    //             Icon(Icons.date_range),
                    //             Text(inProgressMatch.dateCreate),
                    //           ],
                    //         ),
                    //         Row(
                    //           children: [
                    //             Icon(Icons.people),
                    //             Text(inProgressMatch.amountPlayers)
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // );
                  },
                );
              }
          }
          return null;
        },
      ),
    );
  }
}
