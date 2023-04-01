import 'package:flutter/material.dart';
import 'package:xpense/widgets/container1.dart';
import 'package:xpense/widgets/container3.dart';
import 'package:xpense/widgets/navbar.dart';

import '../utils/consts.dart';
import '../widgets/container2.dart';
import '../widgets/container4.dart';
import '../widgets/container5.dart';

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
          children: const [
            NavBar(),
            Container1(),
            Container2(),
            Container3(),
            Container4(),
            Container5(),
          ],
        ),
      ),
    );
  }
}
