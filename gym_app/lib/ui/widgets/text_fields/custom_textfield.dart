import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String placeholder;
  final bool onlyNumbers;

  const CustomTextfield({
    Key? key,
    required this.placeholder,
    this.onlyNumbers = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: TextField(
          keyboardType: onlyNumbers ? TextInputType.number : TextInputType.text,
          decoration: InputDecoration(
            hintText: placeholder,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}
