import 'package:flutter/material.dart';

class DoubleField extends StatefulWidget {
  const DoubleField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  final String hintText;
  final TextEditingController controller;

  @override
  State<DoubleField> createState() => _DoubleFieldState();
}

class _DoubleFieldState extends State<DoubleField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: widget.controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
