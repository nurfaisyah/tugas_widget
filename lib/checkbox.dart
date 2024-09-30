import 'package:flutter/material.dart';

class iniCheckbox extends StatefulWidget {
  const iniCheckbox({super.key});

  @override
  State<iniCheckbox> createState() => _iniCheckboxState();
}

class _iniCheckboxState extends State<iniCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shass Widget'),
      ),
      body: Row(
        children: [
          Checkbox(
            value: isChecked,
            activeColor: Colors.blue,
            onChanged: (val){
              setState(() {
                isChecked = val ?? false;
              });
            }),
            const SizedBox(width: 4,),
            const Text('Agree Term & Conditions', style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),),
        ],
      ),
    );
  }
}