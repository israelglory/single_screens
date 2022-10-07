// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:single_screens/widget/bar.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    bool obscureTxt = true;
    void _toggle() {
      setState(() {
        obscureTxt = !obscureTxt;
      });
    }

    TextEditingController usernameController = TextEditingController();
    TextEditingController passContorller = TextEditingController();
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.deepOrange,
                  ),
                  hintText: "Enter Username/E-mail",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 15.0,
                bottom: 0,
                left: 15.0,
                right: 15.0,
              ),
              child: TextField(
                obscureText: obscureTxt,
                controller: passContorller,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.deepOrange,
                  ),
                  hintText: "Enter Password",
                  suffixIcon: IconButton(
                      onPressed: _toggle,
                      icon: (obscureTxt == true)
                          ? Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            )),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10.0)),
              height: 40,
              width: 280,
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "or",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            IconBar(
              colorname: Color.fromARGB(255, 219, 69, 55),
              socialName: 'Sign in with Google',
              pic: 'images/Gmail.png',
            ),
            IconBar(
              socialName: 'Sign in with Twitter',
              colorname: Colors.blue,
              pic: 'images/Twitter.png',
            ),
            IconBar(
              colorname: Color.fromARGB(255, 66, 103, 178),
              socialName: 'Sign in with Facebook',
              pic: 'images/Facebook.png',
            ),
          ],
        ),
      ),
    );
  }
}
