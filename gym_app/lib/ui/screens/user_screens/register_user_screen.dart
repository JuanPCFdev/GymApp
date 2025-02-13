import 'package:flutter/material.dart';
import 'package:gym_app/ui/widgets/buttons/custom_buttons.dart';
import 'package:gym_app/ui/widgets/text_fields/custom_password_textfield.dart';
import 'package:gym_app/ui/widgets/text_fields/custom_textfield.dart';
import 'package:gym_app/ui/widgets/texts/custom_title.dart';

class RegisterUseScreen extends StatelessWidget {
  const RegisterUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.chevron_left),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTitle(text: "Registrarse"),
                CustomTextfield(placeholder: "Nombre"),
                CustomTextfield(placeholder: "Correo"),
                CustomPasswordTextField(placeholder: "Contraseña"),
                SizedBox(height: 20),
                BlackButton(text: "Registrarse", onPressed: () {})
              ],
            ),
          ),
        ));
  }
}
