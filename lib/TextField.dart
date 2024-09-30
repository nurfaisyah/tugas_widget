import 'package:flutter/material.dart';

class iniField extends StatelessWidget {
  iniField ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shaas Widget'),
      ),
      body: TextField (
        maxLength: 20,
        decoration: const InputDecoration(
          labelText: 'Name',
          labelStyle: TextStyle(
            color: Colors.blueGrey,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey,
            ),
          ),
          helperText: "What's Your Name?",
        ),
        onChanged: (value) {},
      ),
    );
  }
}