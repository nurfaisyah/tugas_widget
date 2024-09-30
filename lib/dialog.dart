import 'package:flutter/material.dart';

class iniDialog extends StatelessWidget {
  const iniDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shass Widget'),
      ),
      body: ElevatedButton(
        onPressed: () {
          showDialog<void>(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Info Min'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: const [
                      Text('Kamu Itu Spesial'),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Siapa lagi kalau bukan dia'),
                  ),
                ],
              );
            },
          );
        },
        child: const Text('Ada Pesan Nih Buat Kamu'),
      ),
    );
  }
}

