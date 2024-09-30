import 'package:flutter/material.dart';

class iniSnack extends StatelessWidget {
  const iniSnack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shass Widget'),
      ),
      body:ElevatedButton(
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Hello brother'),
              action: SnackBarAction(
                label: 'Close',
                onPressed: (){
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            ),
          );
        },
        child: Text('Show Snack Bar'),
      ),
    );
  }
}