import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final double borderRadius;

  const BlackButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height = 50.0,
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
