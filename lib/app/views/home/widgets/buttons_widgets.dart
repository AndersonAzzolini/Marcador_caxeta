import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/views/login/login.dart';
import 'package:untitled/app/views/match/match.dart';

class ButtonsHomeWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 55,
            width: 330,
            child: TextButton(
              child: Text("Jogar Online",
                  style: GoogleFonts.robotoSlab(
                      color: Colors.white, fontSize: 27)),
              onPressed: () {
                Get.to(Login());
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.buttons),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 55,
            width: 330,
            child: TextButton(
              child: Text("Jogar Offline",
                  style: GoogleFonts.robotoSlab(
                      color: Colors.white, fontSize: 27)),
              onPressed: () {
                Get.to(Match());
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.buttons),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
