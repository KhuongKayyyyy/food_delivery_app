import 'package:flutter/material.dart';

class PrimarySearchbar extends StatefulWidget {
  String textHint;
  PrimarySearchbar({required this.textHint});
  @override
  _PrimarySearchbarState createState() => _PrimarySearchbarState();
}

class _PrimarySearchbarState extends State<PrimarySearchbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFFF6F6F6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: TextField(
          decoration: InputDecoration(
            hintText: widget.textHint,
            border: InputBorder.none,
            icon: const Icon(Icons.search, color: Color(0xFFA7ACBF)),
          ),
        ),
      )
    );
  }
}
