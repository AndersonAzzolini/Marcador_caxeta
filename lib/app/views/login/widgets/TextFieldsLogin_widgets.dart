import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/controller/loginController.dart';
import 'package:untitled/app/core/appColors.dart';

class TextFieldsLogin extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  @override
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
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
              ),
            ),
          ),
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
                    borderSide: BorderSide(color: AppColors.buttons, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.buttons, width: 2)),
              ),
              validator: (value) {
                if (value == "") {
                  return "Os campos não podem ser vazios";
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
