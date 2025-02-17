import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gym_app/ui/widgets/calendars/custom_calendar.dart';
import 'package:gym_app/ui/widgets/headers/home_screen_header.dart';
import 'package:gym_app/ui/widgets/imc/custom_imc_card.dart';
import 'package:gym_app/ui/widgets/notification_workout/custom_notification_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomeScreenHeader(title: "Juan Pablo"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomImcCard(imcText: "21"),
                    CustomNotificationCard(
                      hour: "13:15",
                      activeNotifications: true,
                      nearWorkoutTime: true,
                    )
                  ],
                ),
                CustomCalendar(),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 10,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.person),
              Icon(FontAwesomeIcons.dumbbell),
              SizedBox(
                width: 25,
              ),
              Icon(FontAwesomeIcons.bell),
              Icon(FontAwesomeIcons.chartPie)
            ],
          ),
        ),
      ),
    );
  }
}
