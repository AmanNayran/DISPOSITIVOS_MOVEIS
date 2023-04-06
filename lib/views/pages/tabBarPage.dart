import 'package:flutter/material.dart';

import 'TabBarPages/cloudyPage.dart';
import 'TabBarPages/rainyPage.dart';
import 'TabBarPages/sunnyPage.dart';


class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud),
              ),
              Tab(
                icon: Icon(Icons.beach_access),
              ),
              Tab(
                icon: Icon(Icons.brightness_5),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            CloudyPage(),
            SunnyPage(),
            RainyPage(),
          ],
        ),
      ),
    );
  }
}
