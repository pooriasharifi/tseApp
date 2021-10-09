import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/menu.dart';
import 'package:tse/Screens/signup.dart';
import 'package:tse/widget/Bottun.dart';
import 'package:tse/widget/pro.dart';
import 'package:tse/widget/textField.dart';
import 'package:sizer/sizer.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: bgDark,
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 62,
                  width: 349,
                  child: new txtForm(
                    txtStyle: TextStyle(color: Colors.white),
                    obsecureTxt: false,
                    lableTxt: 'Email',
                    bgColor: bgDark,
                    txtColor: Colors.white,
                    siffixColor: Colors.white,
                    suffixIcon: Icons.email,
                    action: TextInputAction.next,
                  ),
                ),
                new SizedBox(
                  height: 11,
                ),
                Container(
                  height: 62,
                  width: 349,
                  child: new txtForm(
                    txtStyle: TextStyle(color: Colors.white),
                    obsecureTxt: true,
                    lableTxt: 'Password',
                    bgColor: bgDark,
                    txtColor: Colors.white,
                    siffixColor: Colors.white,
                    suffixIcon: Icons.lock_open_outlined,
                    action: TextInputAction.next,
                  ),
                ),
                new SizedBox(
                  height: 11,
                ),
                Container(
                  height: 62,
                  width: 349,
                  child: new txtForm(
                    txtStyle: TextStyle(color: Colors.white),
                    obsecureTxt: false,
                    lableTxt: 'Captha',
                    bgColor: bgDark,
                    txtColor: Colors.white,
                    siffixColor: Colors.white,
                    suffixIcon: null,
                    action: TextInputAction.done,
                  ),
                ),
                new SizedBox(
                  height: 11,
                ),
                new Container(
                  height: 62,
                  width: 262,
                  decoration: new BoxDecoration(
                      color: bgDark,
                      borderRadius: BorderRadius.circular(17.5),
                      border: Border.all(color: whiteTxt)),
                  child: new Container(
                    alignment: Alignment.center,
                    child: new Text(
                      '74664',
                      style: TextStyle(color: whiteTxt, fontSize: 30),
                    ),
                  ),
                ),
                Container(
                  width: 349,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          mySwitch(),
                          new Text(
                            'Remember me',
                            style: TextStyle(color: whiteTxt),
                          ),
                        ],
                      ),
                      new Container(
                        child: new Text(
                          'Forgot Password?',
                          style: TextStyle(color: whiteTxt),
                        ),
                      )
                    ],
                  ),
                ),
                new SizedBox(
                  height: 76,
                ),
                new Container(
                  decoration: new BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: whiteTxt.withOpacity(0.6),
                      //     spreadRadius: 0,
                      //     blurRadius: 12,
                      //     offset: Offset(0, 3),
                      //   ),
                      // ],
                      ),
                  child: new InkWell(
                    child: new bottonWidget(
                        heightContainer: 59,
                        widthContainer: 353,
                        hasBorder: false,
                        customCr: false,
                        cr: gr,
                        title: 'Log In'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => menuPage()));
                    },
                  ),
                ),
                new SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
