import 'package:day_17/people.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'menupage.dart';

class Pageviewdemo extends StatefulWidget {
  const Pageviewdemo({super.key});

  @override
  State<Pageviewdemo> createState() => _PageviewdemoState();
}

class _PageviewdemoState extends State<Pageviewdemo> {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pageview Demo"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        _pageController.jumpToPage(0);
                      },
                      icon: Icon(
                        Icons.menu,
                        size: matter == 0 ? 40 : 30,
                        color: matter == 0 ? Colors.orange : Colors.black,
                      )),
                  IconButton(
                      onPressed: () {
                        _pageController.jumpToPage(1);
                      },
                      icon: Icon(
                        Icons.home,
                        size: matter == 1 ? 40 : 30,
                        color: matter == 1 ? Colors.orange : Colors.black,
                      )),
                  IconButton(
                      onPressed: () {
                        _pageController.jumpToPage(2);
                      },
                      icon: Icon(
                        Icons.people,
                        size: matter == 2 ? 40 : 30,
                        color: matter == 2 ? Colors.orange : Colors.black,
                      )),
                ],
              )),
          Expanded(
              flex: 9,
              child: PageView(
                onPageChanged: (value) {
                  matter = value;

                  setState(() {
                    value;
                  });
                },
                controller: _pageController,
                children: [
                  Menupage(),
                  Home(),
                  People(),
                ],
              )),
        ],
      ),
    );
  }

  int? matter;
}
