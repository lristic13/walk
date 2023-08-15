import 'package:flutter/material.dart';
import 'package:walk/pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'BlackHanSans', useMaterial3: true),
      title: 'Flutter Demo',
      home: const HomePage(),
    );
  }
}
