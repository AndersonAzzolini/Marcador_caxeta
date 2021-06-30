import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/core/appColors.dart';

class MatchController extends GetxController {
  editaJogador(id) {
    Get.bottomSheet(
      Container(
        height: 150,
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              leading: Icon(Icons.edit),
              title: Text(
                "Editar jogador ",
                style: GoogleFonts.robotoSlab(
                    color: AppColors.buttons,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => print("editar jgoador"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text(
                "Excluir jogador ",
                style: GoogleFonts.robotoSlab(
                    color: AppColors.buttons,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => print("excluir jogador"),
            ),
          ],
        ),
        
      ),
    );
  }
}
