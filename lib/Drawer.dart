import 'package:flutter/material.dart';

class iniDrawer extends StatelessWidget {
  const iniDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shass Widget'),
      ),
      body: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const  EdgeInsets.all(0.0),
            children: [
              Container(
                color: Colors.blue[100],
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    child: FlutterLogo(size: 50,),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200]
                  ),
                  accountName: const Text(
                    'faisyaa',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: const Text(
                    'syahrotusita007@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Menu 1'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Menu 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}