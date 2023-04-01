import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense/utils/colors.dart';
import 'package:xpense/utils/consts.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }

  Widget MobileContainer1() {
    return Column(
      children: [
        Container(
          // width: w! * 0.,
          height: h! * 0.4,
          width: w! * 0.6,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/illustration1.png'),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Track your \nExpenses to \nSave Money',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Helps you to organize your income and expenses',
          style: TextStyle(color: Colors.grey[600], fontSize: 16),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 45,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_down),
              label: const Text('Try Free Demo'),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          ' - Web, iOs and Android',
          style: TextStyle(color: Colors.grey[600], fontSize: 16),
        ),
      ],
    );
  }

  Widget DesktopContainer1() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: w! * 0.10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.primary)),
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_down),
                          label: const Text('Try Free Demo'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      ' - Web, iOs and Android',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            right: w! * 0.05,
            top: 50,
            bottom: 50,
          ),
          width: w! * 0.5,
          height: h! * 0.65,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/illustration1.png'),
            ),
          ),
        ),
      ],
    );
  }
}
