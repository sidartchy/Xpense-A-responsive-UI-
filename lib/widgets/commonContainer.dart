import 'package:flutter/material.dart';
import 'package:xpense/utils/colors.dart';
import 'package:xpense/utils/consts.dart';

// ignore: non_constant_identifier_names
Widget CommonContainer(
    {required String title,
    required String heading,
    required String description,
    required String image,
    required bool imageLeft}) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(
      children: [
        imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : Container(),
        Expanded(
          child: Column(
            crossAxisAlignment:
                imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(color: Colors.grey[400], fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                heading,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: w! / 20,
                    height: 1.1,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                description,
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_circle_right,
                      size: 20,
                      color: AppColors.primary,
                    ),
                    label: Text(
                      'Learn more',
                      style: TextStyle(color: AppColors.primary),
                    )),
              )
            ],
          ),
        ),
        !imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    ),
  );
}

Widget CommonContainerMobile({
  required String title,
  required String heading,
  required String description,
  required String image,
}) {
  return Container(
    //color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title.toUpperCase(),
          style: TextStyle(color: Colors.grey[400], fontSize: 14),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          heading,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: w! / 10,
              height: 1.1,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_circle_right,
                size: 20,
                color: AppColors.primary,
              ),
              label: Text(
                'Learn more',
                style: TextStyle(color: AppColors.primary),
              )),
        ),
      ],
    ),
  );
}
