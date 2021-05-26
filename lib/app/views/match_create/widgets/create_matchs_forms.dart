import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/controller/match_create.dart';
import 'package:untitled/app/core/appColors.dart';

class CreateMatchsForm extends StatelessWidget {
  final MatchCreateController matchCreateController =
      Get.put(MatchCreateController());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: 55,
            width: 330,
            child: TextFormField(
              controller: matchCreateController.playersController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Nome da partida",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.buttons, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.buttons, width: 2)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 55,
            width: 330,
            child: TextFormField(
              controller: matchCreateController.playersController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Quantidade de jogadores",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.buttons, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.buttons, width: 2)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 55,
            width: 330,
            child: TextFormField(
              controller: matchCreateController.pointsController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Pontos Iniciais",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.buttons, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.buttons, width: 2)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
