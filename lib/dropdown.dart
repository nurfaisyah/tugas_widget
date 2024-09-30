import 'package:flutter/material.dart';
class iniDropdown extends StatefulWidget {
  const iniDropdown({super.key});

  @override
  _iniDropdownState createState() => _iniDropdownState();
}

class _iniDropdownState extends State<iniDropdown> {
  String? selected;

  List<String> dropdownlist = [
   'Apel',
   'Strawberry',
   'Anggur',
   'Mangga',
   'Pisang'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shass Widget'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Pilih Buah Favoritmu'),
          const SizedBox(
            width: 8,
          ),
          DropdownButton(
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            iconSize: 20,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              decoration: const BoxDecoration(
                border: Border( 
                  bottom: BorderSide(color: Colors.deepPurple,
                  width: 3,
                  ),
                  ),
              ),
            ),
            onChanged: (String? val) {
              setState(() {
                selected = val;
              });
            },
            value: selected,
            items: dropdownlist.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
         ),
        ],
      ),
    );
  }
}