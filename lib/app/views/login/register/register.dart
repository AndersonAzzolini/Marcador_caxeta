import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/core/appColors.dart';

class UserRegister extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController senha = TextEditingController();
  final TextEditingController confirmaSenha = TextEditingController();
  final TextEditingController email = TextEditingController();

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
                        controller: email,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: "Digite seu email",
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
                        controller: senha,
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
                        controller: confirmaSenha,
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
                          } else if (senha.text != confirmaSenha.text) {
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
                          if (_formKey.currentState.validate()) {}
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
