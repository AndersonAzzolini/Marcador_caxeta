import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/core/appColors.dart';

class ButtonsCreateMatch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 330,
      child: TextButton(
        child: Text("Criar partida",
            style: GoogleFonts.robotoSlab(color: Colors.white, fontSize: 27)),
        onPressed: () {
          // Get.to(UserRegister());
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0))),
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.buttons),
        ),
      ),
    );
  }
}
