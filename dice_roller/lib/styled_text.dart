// ignore_for_file: unused_import, must_be_immutable

import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText(this.text, {super.key});
  String text;

  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(170, 53, 122, 45),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
