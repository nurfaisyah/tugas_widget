import 'package:flutter/material.dart';

class iniForm extends StatefulWidget {
  const iniForm({super.key});

  @override
  State<iniForm> createState() => _iniFormState();
}

class _iniFormState extends State<iniForm> {
  bool isOn = false;
  bool isChecked = false;
  String? sex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shass Widget'),
      ),
      body: Row(
        children: [
          const Text('Connect To Linkedin'),
          const SizedBox(
            width: 8,
          ),
          Switch(
            value: isOn,
            onChanged: (bool val) {
              setState(() {
                isOn = val;
              });
            },
            activeColor: Colors.green,
            activeTrackColor: Colors.greenAccent,
            inactiveThumbColor: Colors.red,
            inactiveTrackColor: Colors.redAccent,
          ),
          const SizedBox(
            width: 8,
          ),
          const Text('Connect To Facebook'),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
