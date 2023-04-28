import 'package:flutter/material.dart';
import 'package:getx_one/pages/create_page.dart';
import 'package:getx_one/pages/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: CreatePage(),),
    );
  }
}