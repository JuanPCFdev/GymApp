import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNotificationCard extends StatefulWidget {
  final String hour;
  final bool activeNotifications;
  final bool nearWorkoutTime;

  const CustomNotificationCard({
    super.key,
    required this.hour,
    required this.activeNotifications,
    required this.nearWorkoutTime,
  });

  @override
  State<CustomNotificationCard> createState() => _CustomNotificationCardState();
}

class _CustomNotificationCardState extends State<CustomNotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 40, right: 20, bottom: 5),
      child: Container(
        width: 130,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(FontAwesomeIcons.clock),
            Text(
              widget.hour,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
