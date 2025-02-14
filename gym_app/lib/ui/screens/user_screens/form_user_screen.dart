import 'package:flutter/material.dart';
import 'package:gym_app/ui/widgets/buttons/custom_buttons.dart';
import 'package:gym_app/ui/widgets/headers/home_screen_header.dart';
import 'package:gym_app/ui/widgets/text_fields/custom_date_textfield.dart';
import 'package:gym_app/ui/widgets/text_fields/custom_gender_textfield.dart';
import 'package:gym_app/ui/widgets/text_fields/custom_textfield.dart';

class FormUserScreen extends StatelessWidget {
  const FormUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeScreenHeader(
                title: "Juan Pablo",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Center(
                child: Text(
                  "Queremos saber más de ti",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CustomTextfield(placeholder: "Peso en Kg"),
              CustomTextfield(placeholder: "Altura en cm"),
              CustomDateTextfield(),
              CustomGenderTextfield(
                options: [
                  "Masculino",
                  "Femenino",
                  "Helicoptero Apache de Combate",
                  "Otro",
                ],
                onSelectionChanged: (selectedItems) {},
              ),
              BlackButton(text: "¡Comencemos!", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
