import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';

class homePageMenu extends StatefulWidget {
  const homePageMenu({Key? key}) : super(key: key);

  @override
  _homePageMenuState createState() => _homePageMenuState();
}

class _homePageMenuState extends State<homePageMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDark,
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return new Column(
      children: <Widget>[],
    );
  }
}
