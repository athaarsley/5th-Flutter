import 'package:dashboard/ui/main_screen_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Dashboard',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}