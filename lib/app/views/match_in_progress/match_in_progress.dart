import 'package:flutter/material.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/views/match_in_progress/widgets/cards_widgets.dart';

class MatchInProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("Partidas passadas"),
        backgroundColor: AppColors.buttons,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MatchCards(),
        ],
      ),
    );
  }
}
