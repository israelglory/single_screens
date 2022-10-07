// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:single_screens/pages/signup.dart';
import 'package:single_screens/pages/singin.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  late final TabController _thetabController;

  @override
  void initState() {
    super.initState();
    _thetabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 15),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 35, 24, 81),
                ),
              ),
            ),
            TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              tabs: [
                Container(
                  child: Tab(
                    text: "Sign Up",
                  ),
                  //width: 200,
                ),
                Container(
                  child: Tab(
                    text: "Sign In",
                  ),
                  // width: 200,
                ),
              ],
              controller: _thetabController,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              indicatorColor: Colors.transparent,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SignUp(),
                  SignIn(),
                ],
                controller: _thetabController,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _thetabController.dispose();
    super.dispose();
  }
}
