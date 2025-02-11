import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;

  const CustomText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Text(
          text,
          maxLines: 2,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
