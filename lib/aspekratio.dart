import 'package:flutter/material.dart';

class iniratio extends StatelessWidget {
  iniratio ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shaas Widget'),
      ),
      body: AspectRatio(
        aspectRatio: 180 / 240,
        child: Container(
          color: Colors.blue,
        ),
      )
    );
  }
}