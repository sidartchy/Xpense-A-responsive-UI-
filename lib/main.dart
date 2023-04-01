import 'package:flutter/material.dart';
import 'package:xpense/screens/home.dart';
import 'package:xpense/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpense',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'HindSiliguri',
        primaryColor: AppColors.primary,
      ),
      home: const HomePage(),
    );
  }
}
