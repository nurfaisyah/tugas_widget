import 'package:flutter/material.dart';

class iniTabBar extends StatefulWidget {
  const iniTabBar({super.key});

  @override
  State<iniTabBar> createState() => _MyiniTabBar();
}

class _MyiniTabBar extends State<iniTabBar> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shass Widget'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
            Tab(
              icon: Icon(Icons.zoom_out_outlined),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Home'),
          ),
          Center(
            child: Text('Settings'),
          ),
          Center(
            child: Text('Direction'),
          ),
        ],
      ),
    );
  }
}