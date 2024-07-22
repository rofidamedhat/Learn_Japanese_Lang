import 'package:flutter/material.dart';
import 'package:learn_jap/screens/home.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff49332A),
        ),
        scaffoldBackgroundColor: const Color(0xffFFF4D9)
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
