import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class iniGrid extends StatelessWidget {
  iniGrid ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shaas Widget'),
      ),
      body: Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 182 / 243,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: [
              ...List.generate(
                6,
                (index) => Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset.zero,
                      blurRadius: 15.0,
                      ),
                    ],
                    ),
                  ),
                ),
            ],
          ),
      )
    );
  }
}