import 'package:flutter/material.dart';

class iniwrap extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
  ];  
  iniwrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kaki ku kaku'),
      ),
      body: Wrap(
        spacing: 20,
        runSpacing: 10,
        children: colors.map((color) {
          return InkWell(
            onTap: () {},
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                width: 1.0,
                color: Colors.grey[900]!,
                ),
                color: color,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                  color: Colors.grey[900]!,
                  offset: Offset.zero,
                  blurRadius: 15,   
                  )
                ]),
            ),
          );
        }).toList(),
     ),
);
 }
}