import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/menuPage/profileFeuture/edite.dart';
import 'package:tse/Screens/menuPage/profileFeuture/setting.dart';
import 'package:tse/Screens/menuPage/profileFeuture/support.dart';

class profilePageMenu extends StatefulWidget {
  const profilePageMenu({Key? key}) : super(key: key);

  @override
  _profilePageMenuState createState() => _profilePageMenuState();
}

class _profilePageMenuState extends State<profilePageMenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _buildTab().length,
      child: Scaffold(
        backgroundColor: bgDark,
        appBar: AppBar(
          title: Text('Stive Jobs'),
          centerTitle: false,
          backgroundColor: bgDark,
          actions: [
            IconButton(
                onPressed: _openBottomSheet,
                icon: Icon(Icons.more_horiz_outlined))
          ],
        ),
        body: _buildbody(),
      ),
    );
  }

  _openBottomSheet() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Material(
            color: mat,
            child: new Container(
              height: 210,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.grey[900]),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  new SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: new Container(
                      color: greyTxt,
                      height: 1,
                      width: 46,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: new Column(
                      children: [
                        new InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => setting()));
                          },
                          child: ListTile(
                            title: new Text(
                              'Setting',
                              style: TextStyle(color: whiteTxt),
                            ),
                            leading: Icon(
                              Icons.settings,
                              color: whiteTxt,
                            ),
                          ),
                        ),
                        new InkWell(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => edite())),
                          child: ListTile(
                            title: new Text(
                              'Edite Profile',
                              style: TextStyle(color: whiteTxt),
                            ),
                            leading: Icon(
                              Icons.edit_sharp,
                              color: whiteTxt,
                            ),
                          ),
                        ),
                        new InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => support())),
                          child: ListTile(
                            title: new Text(
                              'Support',
                              style: TextStyle(color: whiteTxt),
                            ),
                            leading: Icon(
                              Icons.support,
                              color: whiteTxt,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  _buildbody() {
    return new Container(
      child: new Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new AvatarGlow(
                  endRadius: 60,
                  glowColor: gr,
                  child: new Material(
                    elevation: 8,
                    shape: CircleBorder(),
                    child: new CircleAvatar(
                      radius: 40,
                      backgroundColor: whiteTxt,
                      child: new Text(
                        'S',
                        style: TextStyle(fontSize: 50, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                new Row(
                  children: [
                    new Column(
                      children: [
                        new Text(
                          '10',
                          style: TextStyle(color: whiteTxt, fontSize: 12),
                        ),
                        new SizedBox(
                          height: 10,
                        ),
                        new Text(
                          'Open Tempelate',
                          style: TextStyle(
                              color: whiteTxt,
                              fontSize: 12,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    new SizedBox(
                      width: 25,
                    ),
                    new Column(
                      children: [
                        new Text(
                          '10',
                          style: TextStyle(color: whiteTxt, fontSize: 12),
                        ),
                        new SizedBox(
                          height: 10,
                        ),
                        new Text(
                          'Saved Tempelate',
                          style: TextStyle(
                              color: whiteTxt,
                              fontSize: 12,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          new SizedBox(
            height: 30,
          ),
          new TabBar(
            tabs: _buildTab(),
            automaticIndicatorColorAdjustment: true,
            indicatorColor: gry,
            unselectedLabelColor: gry,
          ),
          new SizedBox(
            height: 25,
          ),
          new Expanded(
            child: new TabBarView(
              children: [perItem(), messageItem()],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildTab() {
    return <Widget>[
      Tab(
        text: 'Personal  Information',
      ),
      Tab(
        text: 'Message',
      )
    ];
  }

  messageItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: new Column(
        children: [
          new Stack(
            clipBehavior: Clip.none,
            overflow: Overflow.visible,
            fit: StackFit.passthrough,
            alignment: AlignmentDirectional.topStart,
            children: [
              new Container(
                height: 100,
                width: double.infinity,
                // color: whiteTxt,
                decoration: new BoxDecoration(
                    border: Border.all(color: whiteTxt, width: 0.5),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(17.5),
                        bottomRight: Radius.circular(17.5),
                        topRight: Radius.circular(17.5),
                        topLeft: Radius.circular(30)),
                    color: bgDark),
                child: new Text(
                    '	Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also ',
                    style: TextStyle(color: whiteTxt)),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: new Container(
                  height: 50,
                  width: 50,
                  child: new CircleAvatar(
                    backgroundColor: greyTxt,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  perItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: new Column(
        children: [
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
    );
  }

//
}
