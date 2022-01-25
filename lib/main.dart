import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/home_page.dart';
import 'package:flutter_learn/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.light),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
