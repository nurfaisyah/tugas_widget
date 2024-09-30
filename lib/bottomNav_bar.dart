import 'package:flutter/material.dart';

class iniNavbottom extends StatefulWidget {
  const iniNavbottom({super.key});

  @override
  State<iniNavbottom> createState() => _iniNavbottomState();
}

class _iniNavbottomState extends State<iniNavbottom> {
  int _selectedIndex = 0;

  List<Map<String, String>> menuItems = [
    {'icon': 'assets/icons/github.svg', 'label': 'Github'},
    {'icon': 'assets/icons/google.svg', 'label': 'Google'},
    {'icon': 'assets/icons/instagram.svg', 'label': 'Instagram'},
    {'icon': 'assets/icons/linkedin.svg', 'label': 'Linkedin'},
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shass Widget'),
      ),
      body: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.blue,
        elevation: 32.0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontSize: 14.0,
          height: 1.5,
          
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12.0,
          height: 1.5,
        ),
        items: menuItems.map<BottomNavigationBarItem>((item) {
          return BottomNavigationBarItem(
            icon: Image.asset(item['icon']!),
            label: item['label']!,
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

