import 'package:flutter/material.dart';
import 'package:flutter_one/Drawer.dart';
import 'package:flutter_one/ListView.dart';
import 'package:flutter_one/SilverAppBar.dart';
import 'package:flutter_one/TabBar.dart';
import 'package:flutter_one/TextField.dart';
import 'package:flutter_one/aspekratio.dart';
import 'package:flutter_one/bottomsheet.dart';
import 'package:flutter_one/center.dart';
import 'package:flutter_one/checkbox.dart';
import 'package:flutter_one/circleAvatar.dart';
import 'package:flutter_one/datepicker.dart';
import 'package:flutter_one/dialog.dart';
import 'package:flutter_one/dropdown.dart';
import 'package:flutter_one/expanded.dart';
import 'package:flutter_one/grid.dart';
import 'package:flutter_one/nav_pop.dart';
import 'package:flutter_one/nav_push.dart';
import 'package:flutter_one/next_page.dart';
import 'package:flutter_one/radio.dart';
import 'package:flutter_one/sized_box.dart';
import 'package:flutter_one/snackbar.dart';
import 'package:flutter_one/stack.dart';
import 'package:flutter_one/row.dart';
import 'package:flutter_one/switch.dart';
import 'package:flutter_one/wrap.dart';
import 'bottomNav_bar.dart';
///import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shaas Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: iniwrap(),
    );
  }
}