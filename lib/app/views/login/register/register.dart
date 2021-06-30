import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/login/LoginCreateController.dart';
import 'package:untitled/app/core/appColors.dart';

class UserRegister extends StatelessWidget {
  final LoginCreateController loginCreateController =
      Get.put(LoginCreateController());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("Cadastro"),
        backgroundColor: AppColors.buttons,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.asset('assets/images/logo.png'),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      height: 55,
                      width: 330,
                      child: TextFormField(
                        controller: loginCreateController.email,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "Digite seu email",
                          // hintText: "Digite seu email",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                        ),
                        validator: (_validatorEmail) {
                          if (!_validatorEmail.isNotEmpty) {
                            return "Campo obrigatório";
                          } else if (!GetUtils.isEmail(_validatorEmail)) {
                            return "Digite um email válido";
                          }
                          return null;
                        },
                        autocorrect: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 55,
                      width: 330,
                      child: TextFormField(
                        controller: loginCreateController.senha,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Digite sua senha",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                        ),
                        validator: (_validatorSenha) {
                          if (!_validatorSenha.isNotEmpty) {
                            return "Campo obrigatório";
                          }
                          return null;
                        },
                        autocorrect: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 55,
                      width: 330,
                      child: TextFormField(
                        controller: loginCreateController.confirmaSenha,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        autocorrect: true,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Confirme sua senha",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: AppColors.buttons, width: 2)),
                        ),
                        validator: (_validatorConfirmaSenha) {
                          if (!_validatorConfirmaSenha.isNotEmpty) {
                            return "Campo obrigatório";
                          } else if (loginCreateController.senha.text !=
                              loginCreateController.confirmaSenha.text) {
                            return "Senhas não conferem";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 55,
                      width: 330,
                      child: TextButton(
                        child: Text("Criar conta",
                            style: GoogleFonts.robotoSlab(
                                color: Colors.white, fontSize: 27)),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            loginCreateController.createLogin();
                          }
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
