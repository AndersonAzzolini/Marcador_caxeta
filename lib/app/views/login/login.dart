import 'package:flutter/material.dart';
import 'package:untitled/app/views/login/widgets/ButtonsLogin_widgets.dart';
import 'package:untitled/app/views/login/widgets/TextFieldsLogin_widgets.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.asset('assets/images/logo.png'),
              SizedBox(height: 20),
              TextFieldsLogin(),
              SizedBox(height: 20),
              ButtonsLogin(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
