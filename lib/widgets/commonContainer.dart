import 'package:flutter/material.dart';
import 'package:xpense/utils/consts.dart';

Widget CommonContainer(
    {required String title,
    heading,
    description,
    image,
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
                    color: Colors.grey[400],
                    fontSize: w! / 20,
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
            ],
          ),
        ),
      ],
    ),
  );
}
