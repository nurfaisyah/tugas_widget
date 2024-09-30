import 'package:flutter/material.dart';

class iniExpanded extends StatelessWidget {
  iniExpanded ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shaas Widget'),
      ),
      body: Row(
        children: const[
          Icon(Icons.arrow_back_ios),
          Expanded(
            child:Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'List Checklist',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ),
            Icon(
              Icons.check,
              color: Colors.blue,
            )
        ],
      )
    );
  }
}