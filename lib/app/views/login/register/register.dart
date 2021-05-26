import 'package:flutter/material.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/views/login/register/widgets/forms.dart';
import 'package:untitled/app/views/login/register/widgets/register_buttons.dart';

class UserRegister extends StatelessWidget {
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
              FormRegister(),
              SizedBox(height: 20),
              RegisterButton()
            ],
          ),
        ),
      ),
    );
  }
}
