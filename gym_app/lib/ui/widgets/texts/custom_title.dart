import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String text;

  const CustomTitle({
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
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
