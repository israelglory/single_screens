// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:single_screens/widget/bar.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          IconBar(
            colorname: Color.fromARGB(255, 219, 69, 55),
            socialName: 'Sign Up with Google',
            pic: 'images/Gmail.png',
          ),
          IconBar(
            socialName: 'Sign Up with Twitter',
            colorname: Colors.blue,
            pic: 'images/Twitter.png',
          ),
          IconBar(
            colorname: Color.fromARGB(255, 66, 103, 178),
            socialName: 'Sign Up with Facebook',
            pic: 'images/Facebook.png',
          ),
          IconBar(
            socialName: 'Sign Up with Email',
            colorname: Color.fromARGB(255, 157, 57, 27),
            pic: 'images/Email.png',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/image.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
