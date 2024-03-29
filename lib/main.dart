import 'package:flutter/material.dart';
import 'package:flutter_ui_template/Interior_App/main_page.dart';

import 'fruit_shop/fruit_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const FruitHomeScreen(),
    );
  }
}
