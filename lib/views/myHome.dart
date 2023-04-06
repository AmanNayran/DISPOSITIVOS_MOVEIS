import 'package:flutter/material.dart';

import 'myClassroom.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Develop's App"),
        centerTitle: true,
      ),
      body: const MyClassroomPage(),
    );
  }
}