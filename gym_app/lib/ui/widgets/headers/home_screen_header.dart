import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreenHeader extends StatelessWidget {
  final String title;

  const HomeScreenHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.height * 0.02,
        vertical: MediaQuery.of(context).size.height * 0.04,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hola, $title!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
          ),
          SizedBox(
            width: 15,
          ),
          Transform.rotate(
            angle: -0.5,
            child: FaIcon(
              FontAwesomeIcons.dumbbell,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
