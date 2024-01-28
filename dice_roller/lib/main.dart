import 'package:dice_roller/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("R O L L   T H E   D I C E"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 127, 197, 207),
          elevation: 50,
        ),
        body: const GradientContainer(
          Color.fromARGB(179, 94, 14, 116),
          Color.fromARGB(239, 28, 2, 2),
        ),
      ),
    );
  }
}
