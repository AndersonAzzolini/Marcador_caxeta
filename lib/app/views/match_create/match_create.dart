import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/match_create.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:get/get.dart';
import 'package:untitled/app/models/loginModel.dart';

class MatchCreate extends StatelessWidget {
  final MatchCreateController matchCreateController =
      Get.put(MatchCreateController());
  final _formKey = GlobalKey<FormState>();
  LoginModel user = LoginModel();
  int idUser;

  MatchCreate(this.idUser);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova partida"),
        backgroundColor: AppColors.buttons,
      ),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.asset('assets/images/logo.png'),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Container(
                        height: 55,
                        width: 330,
                        child: TextFormField(
                          controller: matchCreateController.nameMatchController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Nome da partida",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: AppColors.buttons, width: 2)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: AppColors.buttons, width: 2)),
                          ),
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
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
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
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 55,
                      width: 330,
                      child: TextFormField(
                        controller: matchCreateController.stakeMatchController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: "Valor de compra",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                width: 330,
                child: TextButton(
                  child: Text("Criar partida",
                      style: GoogleFonts.robotoSlab(
                          color: Colors.white, fontSize: 27)),
                  onPressed: () {
                    matchCreateController.criacaoPartida(idUser);
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
        ),
      ),
    );
  }
}
