import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NextPage extends StatelessWidget {
 NextPage({super.key});
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Basic Widgets'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text(
              'Discover the most modern furniture',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0),
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset.zero,
                        blurRadius: 15.0)
                  ]),
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset.zero,
                        blurRadius: 15.0)
                  ]),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("add to cart"),
            ),
            Image.asset("asset/karakter.png")
          ],
        ),
      ),
    );
  }
}