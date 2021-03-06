import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/core/appColors.dart';

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 55,
            width: 330,
            child: TextButton(
              child: Text("Criar conta",
                  style: GoogleFonts.robotoSlab(
                      color: Colors.white, fontSize: 27)),
              onPressed: () {
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
