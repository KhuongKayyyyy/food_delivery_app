import 'package:flutter/material.dart';

class NumericTextField extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const NumericTextField({
    Key? key,
    required this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  _NumericTextFieldState createState() => _NumericTextFieldState();
}

class _NumericTextFieldState extends State<NumericTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        keyboardType: TextInputType.number,
        maxLength: 1, // Restrict input length to 1 character
        decoration: const InputDecoration(
          hintText: "",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
