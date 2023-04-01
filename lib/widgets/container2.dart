import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense/utils/colors.dart';
import 'package:xpense/utils/consts.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer2(),
    );
  }

// ================ MOBILE VIEW ==================//

  Widget MobileContainer1() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/dashboard.png',
                    ),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                companyLogo('assets/images/fb.png'),
                companyLogo('assets/images/google.png'),
                companyLogo('assets/images/cocacola.png'),
                companyLogo('assets/images/samsung.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

// ==================  DESKTOP VIEW ============= //
  Widget DesktopContainer2() {
    return Container(
      width: double.infinity,
      height: 900,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/vector.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -20,
                  bottom: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/vector1.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 712,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/dashboard.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo('assets/images/fb.png'),
                companyLogo('assets/images/google.png'),
                companyLogo('assets/images/cocacola.png'),
                companyLogo('assets/images/samsung.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
