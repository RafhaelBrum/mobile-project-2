import 'package:flutter/material.dart';

import '../modules/calc/screens/calc.dart';
import '../modules/home/screens/home.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                title: const Text("Top Navigation"),
                bottom: TabBar(tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.calculate)),
                  Tab(icon: Icon(Icons.photo_album))
                ])),
            body: TabBarView(
              children: [
                Home(),
                Calculator(),
                Container(child: Text("Em Construção"))
              ],
            )));
  }
}
