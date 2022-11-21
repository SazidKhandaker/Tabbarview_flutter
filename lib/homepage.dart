import 'package:day_17/people.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'menupage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  TabController? _tabBar;

  @override
  void initState() {
    _tabBar = TabController(initialIndex: 0, length: 3, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(controller: _tabBar, tabs: [
          Tab(
            icon: Icon(Icons.menu),
          ),
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.people),
          ),
        ]),
      ),
      body: Container(
        child: TabBarView(controller: _tabBar, children: [
          Menupage(),
          Home(),
          People(),
        ]),
      ),
    );
  }
}
