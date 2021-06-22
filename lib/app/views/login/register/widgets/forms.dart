import 'package:flutter/material.dart';
import 'package:untitled/app/core/appColors.dart';

class FormRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: 55,
            width: 330,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Digite seu email",
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
          SizedBox(height: 20),
          Container(
            height: 55,
            width: 330,
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite sua senha",
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
          SizedBox(height: 20),
          Container(
            height: 55,
            width: 330,
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Confirme sua senha",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.buttons, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.buttons, width: 2)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
