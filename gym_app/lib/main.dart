import 'package:flutter/material.dart';
import 'package:gym_app/ui/screens/home_screens/home_screen.dart';
import 'package:gym_app/ui/screens/user_screens/form_user_screen.dart';
import 'package:gym_app/ui/screens/user_screens/register_user_screen.dart';
import 'package:gym_app/ui/widgets/buttons/custom_buttons.dart';
import 'package:gym_app/ui/widgets/text_fields/custom_date_textfield.dart';
import 'package:gym_app/ui/widgets/text_fields/custom_textfield.dart';
import 'package:gym_app/ui/widgets/texts/custom_text.dart';
import 'package:gym_app/ui/widgets/texts/custom_text_link.dart';
import 'package:gym_app/ui/widgets/texts/custom_title.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Gym App',
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gym App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterUseScreen()),
                );
              },
              child: const Text('Start'),
            ),
            Image.asset('assets/images/heroimg.jpg'),
            BlackButton(
              text: "Press Me!",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormUserScreen()),
                );
              },
            ),
            CustomTextfield(placeholder: "Hola Carebola"),
            CustomTitle(text: "Restablecer \nContraseña"),
            CustomText(text: "¿No recibiste un código?"),
            CustomTextLink(
              text: "Registrate",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            CustomDateTextfield()
          ],
        )),
      ),
    );
  }
}
