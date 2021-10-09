import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/menuPage/Manage/engin.dart';
import 'package:tse/Screens/menuPage/Manage/symbol/Symbols.dart';
import 'package:tse/Screens/menuPage/Manage/template.dart';

class managePageMenu extends StatefulWidget {
  const managePageMenu({Key? key}) : super(key: key);

  @override
  _managePageMenuState createState() => _managePageMenuState();
}

class _managePageMenuState extends State<managePageMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgDark,
        appBar: AppBar(
          title: Text(
            'Manage',
            style: TextStyle(fontSize: 18),
          ),
          centerTitle: false,
          backgroundColor: bgDark,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Text(
                'Symbols',
                style: TextStyle(color: whiteTxt, fontSize: 13),
              ),
              new SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: new SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      new Container(
                          decoration: new BoxDecoration(
                            border: Border.all(color: whiteTxt, width: 0.5),
                            borderRadius: BorderRadius.circular(17.5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: new Text(
                              'رمپنا',
                              style: TextStyle(color: whiteTxt),
                            ),
                          )),
                      new SizedBox(
                        width: 13,
                      ),
                      new Container(
                          decoration: new BoxDecoration(
                            border: Border.all(color: whiteTxt, width: 0.5),
                            borderRadius: BorderRadius.circular(17.5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: new Text(
                              'رمپنا',
                              style: TextStyle(color: whiteTxt),
                            ),
                          )),
                      new SizedBox(
                        width: 13,
                      ),
                      new Container(
                          decoration: new BoxDecoration(
                            border: Border.all(color: whiteTxt, width: 0.5),
                            borderRadius: BorderRadius.circular(17.5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: new Text(
                              'رمپنا',
                              style: TextStyle(color: whiteTxt),
                            ),
                          )),
                      new SizedBox(
                        width: 13,
                      ),
                      new Container(
                          decoration: new BoxDecoration(
                            border: Border.all(color: whiteTxt, width: 0.5),
                            borderRadius: BorderRadius.circular(17.5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: new Text(
                              'رمپنا',
                              style: TextStyle(color: whiteTxt),
                            ),
                          )),
                      new SizedBox(
                        width: 13,
                      ),
                      new Container(
                          decoration: new BoxDecoration(
                            border: Border.all(color: whiteTxt, width: 0.5),
                            borderRadius: BorderRadius.circular(17.5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: new Text(
                              'رمپنا',
                              style: TextStyle(color: whiteTxt),
                            ),
                          )),
                      new SizedBox(
                        width: 13,
                      ),
                      new Container(
                        child: InkWell(
                          child: new Text(
                            'Show All',
                            style: TextStyle(color: gr),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => symbolPage()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              new SizedBox(
                height: 96,
              ),
              new Text(
                'Template',
                style: TextStyle(color: whiteTxt, fontSize: 13),
              ),
              new SizedBox(
                height: 20,
              ),
              new Text(
                '	Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows',
                style: TextStyle(fontSize: 10, color: whiteTxt, height: 2),
                textAlign: TextAlign.left,
              ),
              new SizedBox(
                height: 35,
              ),
              new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => templatePage())),
                    child: new Text(
                      'Start',
                      style: TextStyle(color: whiteTxt),
                    ),
                  )
                ],
              ),
              new SizedBox(
                height: 96,
              ),
              new Text('Search Engine',
                  style: TextStyle(color: whiteTxt, fontSize: 13)),
              new SizedBox(
                height: 20,
              ),
              new Text(
                '	Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows',
                style: TextStyle(fontSize: 10, color: whiteTxt, height: 2),
                textAlign: TextAlign.left,
              ),
              new SizedBox(
                height: 30,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  new InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => enginPage())),
                    child: new Text(
                      'Start',
                      style: TextStyle(color: whiteTxt),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
