import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:xpense/widgets/commonContainer.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer5(),
      desktop: DesktopContainer5(),
    );
  }

  Widget MobileContainer5() {
    return CommonContainerMobile(
      title: "use any time",
      heading: 'Use anytime when you need',
      description:
          'Incididunm ident fugiat dolore consequat sit. Tempor velit laborum qui qui sunt. Adipisicing nostrud ut eu minim. Est elit reprehenderit commodo elit aute excepteur reprehenderit quis veniam.',
      image: 'assets/images/illustration3.png',
    );
  }

  Widget DesktopContainer5() {
    return CommonContainer(
      title: "use any time",
      heading: 'Use anytime \nwhen you \nneed',
      description:
          'Incididunm ident fugiat dolore consequat sit. Tempor velit laborum qui qui sunt. Adipisicing nostrud ut eu minim. Est elit reprehenderit commodo elit aute excepteur reprehenderit quis veniam.',
      imageLeft: false,
      image: 'assets/images/illustration3.png',
    );
  }
}
