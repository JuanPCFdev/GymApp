import 'package:flutter/material.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    String dayOfWeek = getCurrentDay();

    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                dayOfWeek,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 15),
              child: Text(
                "10",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

String getCurrentDay() {
  DateTime now = DateTime.now();
  List<String> diasSemana = [
    "lunes",
    "Martes",
    "Miércoles",
    "Jueves",
    "Viernes",
    "Sábado",
    "Domingo"
  ];
  return diasSemana[now.weekday - 1]; // `weekday` empieza en 1 (lunes)
}
