import 'package:chat_app/page/chat.dart';
import 'package:chat_app/page/setting_profile_page.dart';
import 'package:chat_app/page/top_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: TopPage(),
    );
  }
}

