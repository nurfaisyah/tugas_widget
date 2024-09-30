import 'package:flutter/material.dart';

class iniDate extends StatelessWidget {
  const iniDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shass Widget'),
      ),
      body: InkWell(
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
          );
          debugPrint("pickedDate: $pickedDate");
        },
        child: TextFormField(
          initialValue: '2024-01-01',
          maxLength: 20,
          enabled: false,
          decoration: const InputDecoration(
            labelText: 'Tanggal Lahir',
            labelStyle: TextStyle(
              color: Colors.blue,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            suffixIcon: Icon(Icons.date_range),
            helperText: "Tanggal Lahirmu?",
          ),
          onChanged: (value) {},
        ),
      ),
    );
  }
}