import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/loginController.dart';
import 'package:untitled/app/core/appColors.dart';

class ButtonsLogin extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              Container(
                  height: 55,
                  width: 330,
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      controller: loginController.emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: AppColors.buttons, width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: AppColors.buttons, width: 2)),
                      ),
                      validator: (value) {
                        if (!value.isNotEmpty) {
                          return "Preencha tods os campos";
                        }
                        return null;
                      },
                      autocorrect: true,
                    ),
                  )),
              SizedBox(height: 20),
              Container(
                height: 55,
                width: 330,
                child: TextFormField(
                  controller: loginController.senhaController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.buttons, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.buttons, width: 2)),
                  ),
                  validator: (value) {
                    if (!value.isNotEmpty) {
                      return "Preencha tods os campos";
                    }
                    return null;
                  },
                  autocorrect: true,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 55,
            width: 330,
            child: TextButton(
              child: Text("Entrar",
                  style: GoogleFonts.robotoSlab(
                      color: Colors.white, fontSize: 27)),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  loginController.showLoader();
                  loginController.getLogin();
                }
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
              child: Text("Cadastre-se",
                  style: GoogleFonts.robotoSlab(
                      color: Colors.white, fontSize: 27)),
              onPressed: () {
                // Get.to(UserRegister());
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
