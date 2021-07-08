import 'package:flutter/material.dart';
import 'package:untitled/app/controller/match/match_in_progress_controller.dart';
import 'package:untitled/app/core/appColors.dart';

import 'package:get/get.dart';
import 'package:untitled/app/models/match_in_progress_model.dart';

class MatchInProgress extends StatelessWidget {
  final MatchInProgressController matchInProgressController =
      Get.put(MatchInProgressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("Partidas em andamento"),
        backgroundColor: AppColors.buttons,
      ),
      body: FutureBuilder<List<InProgressMatch>>(
        future: matchInProgressController.buscarPartidasEmAndamento(),
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
                    return Card(
                      child: ListTile(
                        title: Text(inProgressMatch.name),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.date_range),
                                Text(inProgressMatch.dateCreate),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.people),
                                Text(inProgressMatch.amountPlayers)
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
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
