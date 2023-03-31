import 'package:flutter/material.dart';
import 'package:xpense/widgets/container1.dart';
import 'package:xpense/widgets/navbar.dart';

import '../utils/consts.dart';
import '../widgets/container2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Container1(),
            Container2(),
          ],
        ),
      ),
    );
  }
}
