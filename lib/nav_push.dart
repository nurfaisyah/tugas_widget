import 'package:flutter/material.dart';
import 'package:flutter_one/grid.dart';

class iniNavigationPush extends StatelessWidget {
  const iniNavigationPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shass Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const iniGrid();
                  }));
              },
              child: const Text('Lanjut'),
            ),
          ],
        ),
      ),
    );
  }
}