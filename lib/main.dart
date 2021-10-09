import 'package:flutter/material.dart';
import 'Screens/Splash.dart';

void main(){
  runApp(MainPro());
}

class MainPro extends StatefulWidget {
  const MainPro({Key? key}) : super(key: key);

  @override
  _MainProState createState() => _MainProState();
}

class _MainProState extends State<MainPro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
