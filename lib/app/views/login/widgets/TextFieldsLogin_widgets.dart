import 'package:flutter/material.dart';
import 'package:untitled/app/core/appColors.dart';

class TextFieldsLogin extends StatelessWidget {
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
                labelText: "Email",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.buttons, width: 2)
                ),
                 focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.buttons, width: 2)
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 55,
            width: 330,
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: "Senha",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.buttons, width: 2)
                ),
                 focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.buttons, width: 2)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
