import 'package:flutter/material.dart';

class CustomTextLink extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomTextLink({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            maxLines: 2,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
