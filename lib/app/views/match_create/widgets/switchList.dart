import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app/controller/match_create.dart';
import 'package:untitled/app/core/appColors.dart';

class SwitchListCreatMatch extends StatelessWidget {
  final MatchCreateController matchCreateController =
      Get.put(MatchCreateController());
  int teste;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SwitchListTile(
                title: Text(
                  "Personalizar nome dos Jogadores",
                  style: TextStyle(fontSize: 20),
                ),
                value: matchCreateController.personalizarNomes.value,
                onChanged: (isSelected) {
                  if (!matchCreateController.playersController.text.isNum ||
                      int.parse(matchCreateController.playersController.text) <
                          2) {
                    Get.defaultDialog(
                        backgroundColor: AppColors.background,
                        title: ('Erro'),
                        content: Text(
                            "Quantidade de jogadores não pode ser menor que 2",
                            style: GoogleFonts.robotoSlab(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: AppColors.yellow)),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Ok"))
                        ]);
                    return false;
                  }
                  teste =
                      int.parse(matchCreateController.playersController.text);
                  print(teste);
                  matchCreateController.personalizarNomes.value =
                      matchCreateController
                          .toggle(matchCreateController.personalizarNomes);
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SwitchListTile(
                title: Text(
                  "Sortear Carteiro",
                  style: TextStyle(fontSize: 20),
                ),
                value: matchCreateController.sortear.value,
                onChanged: (isSelected) {
                  matchCreateController.sortear.value = matchCreateController
                      .toggle(matchCreateController.sortear);
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
