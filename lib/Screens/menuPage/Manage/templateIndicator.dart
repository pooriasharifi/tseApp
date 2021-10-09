import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/menuPage/Manage/template.dart';
import 'package:tse/Screens/welcomPage.dart';
import 'package:tse/module/bloc.dart';
import 'package:tse/widget/pro.dart';

class templateInd extends StatefulWidget {
  const templateInd({Key? key}) : super(key: key);

  @override
  _templateIndState createState() => _templateIndState();
}

class _templateIndState extends State<templateInd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgDark,
        body: new Center(
          child: new Column(mainAxisSize: MainAxisSize.min, children: [
            DropdownButton(items: [
              DropdownMenuItem(
                child: Text('Chose'),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text('Macd'),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text('Rsi'),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text('bolinger'),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text('Ema'),
                value: 5,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homePage()));
                },
              ),
            ]),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          ]),
        ));
  }
}



// 