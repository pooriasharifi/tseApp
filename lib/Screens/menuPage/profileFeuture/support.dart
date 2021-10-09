import 'package:flutter/material.dart';

import '../../../Constans.dart';

class support extends StatefulWidget {
  const support({Key? key}) : super(key: key);

  @override
  _supportState createState() => _supportState();
}

class _supportState extends State<support> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Support',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: bgDark,
      ),
      backgroundColor: bgDark,
    ));
  }
}
