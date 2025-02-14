import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateTextfield extends StatefulWidget {
  final String label;
  final void Function(DateTime?)? onDateSelected;

  const CustomDateTextfield({
    super.key,
    this.onDateSelected,
    this.label = "dd/MM/AA",
  });

  @override
  State<CustomDateTextfield> createState() => _CustomDateTextfieldState();
}

class _CustomDateTextfieldState extends State<CustomDateTextfield> {
  final TextEditingController _controller = TextEditingController();
  final DateFormat _dateFormat = DateFormat('dd/MM/yy');

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2007),
      firstDate: DateTime(1907),
      lastDate: DateTime(2008),
    );

    if (pickedDate != null) {
      setState(() {
        _controller.text = _dateFormat.format(pickedDate);
      });
      widget.onDateSelected?.call(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: TextField(
          controller: _controller,
          readOnly: true,
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: "DD/MM/AA",
            prefixIcon: Icon(Icons.calendar_today),
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
          onTap: () => _selectDate(context),
        ),
      ),
    );
  }
}
