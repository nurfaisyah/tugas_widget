import 'package:flutter/material.dart';

class iniGrid extends StatelessWidget {
  const iniGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shass Widget'),
      ),
      body: Container(
        color: Colors.lightGreenAccent,
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 185 / 243,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            ...List.generate(
                6,
                (index) => Container(
                      height: 300,
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            image: AssetImage('assets/windah basudara.jfif'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset.zero,
                                blurRadius: 15.0)
                          ]),
                    ))
          ],
        ),
      ),
    );
  }
}
