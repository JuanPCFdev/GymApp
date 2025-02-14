import 'package:flutter/material.dart';

class CustomGenderTextfield extends StatefulWidget {
  final List<String> options;
  final Function(String) onSelectionChanged;

  const CustomGenderTextfield({
    super.key,
    required this.options,
    required this.onSelectionChanged,
  });

  @override
  State<CustomGenderTextfield> createState() => _CustomGenderTextfieldState();
}

class _CustomGenderTextfieldState extends State<CustomGenderTextfield> {
  String? _selectedItem;

  void _showSingleSelect() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          height: widget.options.length * 60.0 +
              50, // Ajusta el tamaño dinámicamente
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selecciona una opción",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: ListView(
                  children: widget.options.map((option) {
                    return ListTile(
                      title: Text(option),
                      onTap: () {
                        setState(() {
                          _selectedItem = option;
                        });
                        widget.onSelectionChanged(option);
                        Navigator.pop(
                            context); // Cierra el modal después de seleccionar
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showSingleSelect,
      child: AbsorbPointer(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Genero",
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
                  suffixIcon: Icon(Icons.expand_more)),
              controller: TextEditingController(
                text: _selectedItem ?? "",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
