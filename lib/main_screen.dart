import 'package:flutter/material.dart';
import 'package:my_land/main/main_list.dart';
import 'package:my_land/main/main_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Land'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainMenu(),
            MainList(),
          ],
        ),
      ),
    );
  }
}
