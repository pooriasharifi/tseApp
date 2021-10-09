import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/welcomPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    handleSplash();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDark,
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new SizedBox(
              height: 500,
            ),
            new Text(
              'Lorem Ipsum',
              style: TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  void handleSplash() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => homePage()));
  }
}
