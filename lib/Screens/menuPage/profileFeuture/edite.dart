import 'package:flutter/material.dart';

import '../../../Constans.dart';

class edite extends StatefulWidget {
  const edite({Key? key}) : super(key: key);

  @override
  _editeState createState() => _editeState();
}

class _editeState extends State<edite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Edite Profile',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: bgDark,
        actions: [
          new InkWell(
              onTap: () {},
              child: Icon(
                Icons.topic_rounded,
                color: gr,
              ))
        ],
      ),
      backgroundColor: bgDark,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              new SizedBox(
                height: 80,
              ),
              Container(
                height: 200,
                width: 200,
                child: new CircleAvatar(
                  backgroundColor: whiteTxt,
                  child: new Text(
                    'S',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
              new SizedBox(
                height: 20,
              ),
              new Text(
                'Change photo',
                style: TextStyle(fontSize: 18, color: whiteTxt),
              ),
              new SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: new Text(
                  'name',
                  style: TextStyle(fontSize: 13, color: whiteTxt),
                ),
              ),
              new SizedBox(
                height: 20,
              ),
              new Text(
                'Stive',
                style: TextStyle(fontSize: 15, color: whiteTxt),
              ),
              new SizedBox(
                height: 5,
              ),
              new Container(
                height: 0.5,
                width: double.infinity,
                color: greyTxt,
              ),
              new SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: new Text(
                  'Family',
                  style: TextStyle(fontSize: 13, color: whiteTxt),
                ),
              ),
              new SizedBox(
                height: 20,
              ),
              new Text(
                'Jobs',
                style: TextStyle(fontSize: 15, color: whiteTxt),
              ),
              new SizedBox(
                height: 5,
              ),
              new Container(
                height: 0.5,
                width: double.infinity,
                color: greyTxt,
              ),
              new SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: new Text(
                  'Email',
                  style: TextStyle(fontSize: 13, color: whiteTxt),
                ),
              ),
              new SizedBox(
                height: 20,
              ),
              new Text(
                'example@mailbox.com',
                style: TextStyle(fontSize: 15, color: whiteTxt),
              ),
              new SizedBox(
                height: 5,
              ),
              new Container(
                height: 0.5,
                width: double.infinity,
                color: greyTxt,
              ),
              new SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: new Text(
                  'Year',
                  style: TextStyle(fontSize: 13, color: whiteTxt),
                ),
              ),
              new SizedBox(
                height: 20,
              ),
              new Text(
                '2000/15/5',
                style: TextStyle(fontSize: 15, color: whiteTxt),
              ),
              new SizedBox(
                height: 5,
              ),
              new Container(
                height: 0.5,
                width: double.infinity,
                color: greyTxt,
              ),
              new SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: new Text(
                  'Gender',
                  style: TextStyle(fontSize: 13, color: whiteTxt),
                ),
              ),
              new SizedBox(
                height: 20,
              ),
              new Text(
                'Man',
                style: TextStyle(fontSize: 15, color: whiteTxt),
              ),
              new SizedBox(
                height: 5,
              ),
              new Container(
                height: 0.5,
                width: double.infinity,
                color: greyTxt,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
