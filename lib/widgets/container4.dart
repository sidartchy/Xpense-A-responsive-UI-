import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense/widgets/commonContainer.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer4(),
      desktop: DesktopContainer4(),
    );
  }

  Widget MobileContainer4() {
    return CommonContainerMobile(
      title: "free some cose",
      heading: 'Save cost for you and family',
      description:
          ' nostrud aliqua ad exercitation eiusmod proident fugiat dolore consequat sit. Tempor velit laborum qui qui sunt. Adipisicing nostrud ut eu minim. Est elit reprehenderit commodo elit aute excepteur reprehenderit quis veniam.',
      image: 'assets/images/illustration2.png',
    );
  }

  Widget DesktopContainer4() {
    return CommonContainer(
      title: "free some cose",
      heading: 'Save cost \nfor you \nand family',
      description:
          ' nostrud aliqua ad exercitation eiusmod proident fugiat dolore consequat sit. Tempor velit laborum qui qui sunt. Adipisicing nostrud ut eu minim. Est elit reprehenderit commodo elit aute excepteur reprehenderit quis veniam.',
      imageLeft: true,
      image: 'assets/images/illustration2.png',
    );
  }
}
