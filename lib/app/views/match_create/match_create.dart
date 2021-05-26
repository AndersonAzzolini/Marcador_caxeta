import 'package:flutter/material.dart';
import 'package:untitled/app/core/appColors.dart';
import 'package:untitled/app/views/match_create/widgets/buttons.dart';
import 'package:untitled/app/views/match_create/widgets/create_matchs_forms.dart';

class MatchCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar nova partida"),
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
              SizedBox(height: 20),
              CreateMatchsForm(),
              SizedBox(
                height: 20,
              ),
              ButtonsCreateMatch(),
            ],
          ),
        ),
      ),
    );
  }
}
