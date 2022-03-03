import 'package:flutter/material.dart';
import 'package:my_land/main_screen.dart';
import 'package:my_land/routes.dart';
import 'package:my_land/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Land',
      theme: theme(),
      home: MainScreen(),
      routes: route,
    );
  }
}