import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "learning";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Material(
          child: Center(child: Text('Welcome to $days of flutter $name'))),
    );
  }
}
