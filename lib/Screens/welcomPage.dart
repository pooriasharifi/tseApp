import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/login.dart';
import 'package:tse/Screens/signup.dart';
import 'package:tse/widget/Bottun.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDark,
      body: SafeArea(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: Colors.white,
                child: new SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                ),
              ),
            ),
            new Text('lorem Ipsum',
                style: TextStyle(
                  color: Colors.white,
                )),
            new SizedBox(
              height: 20,
            ),
            Container(
              decoration: new BoxDecoration(

                  //   boxShadow: [
                  //   BoxShadow(
                  //       color: gr,
                  //       spreadRadius: 0,
                  //       blurRadius: 12,
                  //       offset: Offset(0, 3))
                  // ]
                  ),
              child: new GestureDetector(
                child: bottonWidget(
                  heightContainer: 59,
                  widthContainer: 353,
                  hasBorder: false,
                  title: 'Log In To Account',
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginPage()));
                },
              ),
            ),
            new SizedBox(
              height: 40,
            ),
            new Container(
              child: new GestureDetector(
                child: new bottonWidget(
                    heightContainer: 46.3,
                    widthContainer: 277,
                    hasBorder: true,
                    title: 'Creat New'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signupPage()));
                },
              ),
            ),
            new SizedBox(
              height: 66.7,
            ),
            new GestureDetector(
                onTap: () {},
                child: new Text(
                  'privacy&policy',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
