import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense/widgets/commonContainer.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
    );
  }

  Widget MobileContainer3() {
    return CommonContainerMobile(
       title: "always online",
      heading: 'Real-time support with cloud',
      description:
          'e tempor nulla ut officia qui dolor magna ullamco reprehenderit proident ea nostrud labore.',
      image: 'assets/images/illustration1.png',
    );
  }

  Widget DesktopContainer3() {
    return CommonContainer(
      title: "always online",
      heading: 'Real-time \nsupport \nwith cloud',
      description:
          'e tempor nulla ut officia qui dolor magna ullamco reprehenderit proident ea nostrud labore.',
      imageLeft: false,
      image: 'assets/images/illustration1.png',
    );
  }
}
