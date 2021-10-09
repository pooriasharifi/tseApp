import 'package:flutter/material.dart';

import '../../../Constans.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: bgDark,
      ),
      backgroundColor: bgDark,
      body: new Column(
        children: [
          new SizedBox(
            height: 60,
          ),
          new InkWell(
            onTap: () {},
            child: new ListTile(
              title: Text(
                'Language',
                style: TextStyle(fontSize: 18, color: whiteTxt),
              ),
              leading: Icon(
                Icons.language,
                color: whiteTxt,
              ),
            ),
          ),
          new SizedBox(
            height: 15,
          ),
          new InkWell(
            onTap: () {},
            child: new ListTile(
              title: Text(
                'Theme',
                style: TextStyle(fontSize: 18, color: whiteTxt),
              ),
              leading: Icon(
                Icons.thermostat,
                color: whiteTxt,
              ),
            ),
          ),
          new SizedBox(
            height: 15,
          ),
          new InkWell(
            onTap: () {},
            child: new ListTile(
              title: Text(
                'About',
                style: TextStyle(fontSize: 18, color: whiteTxt),
              ),
              leading: Icon(
                Icons.info,
                color: whiteTxt,
              ),
            ),
          ),
          new SizedBox(
            height: 15,
          )
        ],
      ),
    ));
  }
}
