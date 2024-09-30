import 'package:flutter/material.dart';

class iniRadio extends StatefulWidget {
  const iniRadio({super.key});

  @override
  State<iniRadio> createState() => _iniRadioState();
}
class _iniRadioState extends State<iniRadio> {
  String? sex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shass Widget'),
      ),
      body: Row(
        children: [
          const Text ('Gender : '),
          const SizedBox( width: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: "Male",
                groupValue: sex,
                onChanged: (String? val){
                  setState((){
                    sex = val;
                  });
                },
              ),
              const Text('Male')
            ],
          ),
          const SizedBox(
            width: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: "Female",
                groupValue: sex,
                onChanged: (String? val){
                  setState((){
                    sex = val;
                  });
                },
              ),
              const Text('Female')
            ],
          ),
        ],
      ),
    );
  }
}

