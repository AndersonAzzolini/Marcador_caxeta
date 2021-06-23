import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/HomePageOptionsController.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/views/match_in_progress/match_in_progress.dart';
import 'package:untitled/app/views/match_create/match_create.dart';
import 'package:get/get.dart';

class HomePageOptions extends StatelessWidget {
  // loginModel modelUser; para usar o model, wigdet.nomeVariavel
    final HomePageOptionsController homePageOpionsController = Get.put(HomePageOptionsController());

  int idUser;
  HomePageOptions(this.idUser);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: homePageOpionsController.onWillPop,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset('assets/images/logo.png'),
                SizedBox(height: 50),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 55,
                        width: 330,
                        child: TextButton(
                          child: Text("Nova Partida",
                              style: GoogleFonts.robotoSlab(
                                  color: Colors.white, fontSize: 27)),
                          onPressed: () {
                            Get.to(MatchCreate());
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.buttons),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 55,
                        width: 330,
                        child: TextButton(
                          child: Text("Acompanhar partida",
                              style: GoogleFonts.robotoSlab(
                                  color: Colors.white, fontSize: 27)),
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.buttons),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 55,
                        width: 330,
                        child: TextButton(
                          child: Text("Partidas passadas",
                              style: GoogleFonts.robotoSlab(
                                  color: Colors.white, fontSize: 27)),
                          onPressed: () {
                            Get.to(MatchInProgress());
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.buttons),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 55,
                        width: 330,
                        child: TextButton(
                          child: Text("Partidas em andamento",
                              style: GoogleFonts.robotoSlab(
                                  color: Colors.white, fontSize: 27)),
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.buttons),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
