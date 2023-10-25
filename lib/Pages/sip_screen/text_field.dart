import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, required this.label, required this.text});

  final String label, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(top: 20),
      child: TextField(
        style: heading300,
        controller: TextEditingController()..text = text,
        readOnly: true,
        enabled: true,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
              top: 10.12, bottom: 10.46, left: 10, right: 12.8),
          labelText: label,
          labelStyle: heading300,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xff6610f2),
              width: 0.5
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xff6610f2),
              width: 0.5
            ),
          ),
        ),
      ),
    );
  }
}
