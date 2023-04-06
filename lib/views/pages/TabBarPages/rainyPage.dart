import 'package:flutter/material.dart';

class RainyPage extends StatelessWidget {
  const RainyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 360, right: 50, left: 50),
          child: const Column(
            children: [
              Icon(
                Icons.brightness_5_outlined,
                size: 50,
                color: Colors.teal
              ),
              Text(
                "It's rainy here",
                style: TextStyle(fontSize: 40, color: Colors.teal,),
              )
            ],
          ),
        )
      ),
    );
  }
}