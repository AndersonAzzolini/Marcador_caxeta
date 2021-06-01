import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Container(
          width: 330,
          height: 55,
          child: Column(
            children: [
              TextButton(
                  child: Text("Começar Partida",
                      style: GoogleFonts.robotoSlab(
                          color: AppColors.white, fontSize: 27)),
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.buttons))),
            ],
          ),
        ),
      ),
    );
  }
}
