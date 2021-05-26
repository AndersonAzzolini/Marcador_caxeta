import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/core/appColors.dart';

class InfoHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 69,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.stroke,
            width: 2.0,
          ),
        ),
      ),
      child: Table(
        columnWidths: {
          0: FlexColumnWidth(1.5),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1),
          3: FlexColumnWidth(1),
          4: FlexColumnWidth(0.5),
        },
        children: [
          TableRow(children: [
            Container(
              height: 61,
              child: Center(
                child: Text(
                  "Jogadores",
                  style: GoogleFonts.robotoSlab(
                      color: AppColors.buttons,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 61,
              child: Center(
                child: Text(
                  "Correu",
                  style: GoogleFonts.robotoSlab(
                      color: AppColors.buttons,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 61,
              child: Center(
                child: Text(
                  "Perdeu",
                  style: GoogleFonts.robotoSlab(
                      color: AppColors.buttons,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 61,
              child: Center(
                child: Text(
                  "Venceu",
                  style: GoogleFonts.robotoSlab(
                      color: AppColors.buttons,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 61,
              child: Center(
                child: Text(
                  "Pts",
                  style: GoogleFonts.robotoSlab(
                      color: AppColors.buttons,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
