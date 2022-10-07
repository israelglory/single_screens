// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class IconBar extends StatelessWidget {
  IconBar({
    Key? key,
    required this.socialName,
    required this.colorname,
    required this.pic,
  }) : super(key: key);
  String socialName;
  String pic;
  Color colorname;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      height: 50,
      decoration: BoxDecoration(
        color: colorname,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Center(
              child: Image.asset(
                pic,
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                socialName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
