import 'package:flutter/material.dart';

class inilist extends StatelessWidget {
  final List<String> categories = <String> ['11', 'PPLG', '2'];
  inilist ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shaas Widget'),
      ),
      body: ListView (
        scrollDirection: Axis.horizontal,
        children: List.generate (
          categories.length,
          (index) {
            return GestureDetector(
              onTap: () {},
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 24,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  categories[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}