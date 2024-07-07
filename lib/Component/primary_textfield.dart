import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
  final String textHint;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  PrimaryTextfield({
    required this.textHint,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: textHint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
