import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/confirm.dart';
import 'package:tse/module/bloc.dart';

import 'package:tse/widget/Bottun.dart';
import 'package:tse/widget/pro.dart';
import 'package:tse/widget/textField.dart';

class signupPage extends StatefulWidget {
  const signupPage({Key? key}) : super(key: key);

  @override
  _signupPageState createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  @override
  Widget build(BuildContext context) {
    intBloc drp = intBloc();
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgDark,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: new SizedBox(
                        height: 100,
                      ),
                    ),
                    new txtForm(
                      txtStyle: TextStyle(color: Colors.white),
                      obsecureTxt: false,
                      lableTxt: 'Name',
                      bgColor: bgDark,
                      txtColor: Colors.white,
                      siffixColor: Colors.white,
                      suffixIcon: Icons.person,
                      action: TextInputAction.next,
                    ),
                    new SizedBox(
                      height: 11,
                    ),
                    new txtForm(
                      txtStyle: TextStyle(color: Colors.white),
                      obsecureTxt: false,
                      lableTxt: 'Family',
                      bgColor: bgDark,
                      txtColor: Colors.white,
                      siffixColor: Colors.white,
                      suffixIcon: Icons.family_restroom,
                      action: TextInputAction.next,
                    ),
                    new SizedBox(
                      height: 11,
                    ),
                    new txtForm(
                      txtStyle: TextStyle(color: Colors.white),
                      obsecureTxt: false,
                      lableTxt: 'Email',
                      bgColor: bgDark,
                      txtColor: Colors.white,
                      siffixColor: Colors.white,
                      suffixIcon: Icons.email,
                      action: TextInputAction.next,
                    ),
                    new SizedBox(
                      height: 11,
                    ),
                    new txtForm(
                      txtStyle: TextStyle(color: Colors.white),
                      obsecureTxt: true,
                      lableTxt: 'Password',
                      bgColor: bgDark,
                      txtColor: Colors.white,
                      siffixColor: Colors.white,
                      suffixIcon: Icons.lock,
                      action: TextInputAction.next,
                    ),
                    new SizedBox(
                      height: 11,
                    ),
                    new txtForm(
                      txtStyle: TextStyle(color: Colors.white),
                      obsecureTxt: true,
                      lableTxt: 'Confirm Password',
                      bgColor: bgDark,
                      txtColor: Colors.white,
                      siffixColor: Colors.white,
                      suffixIcon: Icons.lock,
                      action: TextInputAction.done,
                    ),
                    new SizedBox(
                      height: 11,
                    ),
                    new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StreamBuilder<int>(
                              stream: drp.Stream$,
                              builder: (context, snapshot) {
                                return new DropdownButton<int>(
                                  value: snapshot.data ?? 1,
                                  items: [
                                    DropdownMenuItem(
                                      child: new Text('Gender',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: new Text('Man',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: new Text('Woman',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      value: 3,
                                    )
                                  ],
                                  onChanged: (val) => drp.SetValue(val!),
                                  dropdownColor: bgDark,
                                  iconEnabledColor: gr,
                                );
                              }),
                        ]),
                    Row(
                      children: [
                        mySwitch(),
                        new Container(
                          child: new Text(
                            'I accept policy and terms',
                            style: TextStyle(color: greyTxt, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    new SizedBox(
                      height: 32,
                    ),
                    new Container(
                      decoration: new BoxDecoration(
                          //   boxShadow: [
                          //   BoxShadow(
                          //       color: gr,
                          //       spreadRadius: 0,
                          //       blurRadius: 12,
                          //       offset: Offset(0, 3)
                          //       )
                          // ]
                          ),
                      child: new GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => confirmPage())),
                        child: new bottonWidget(
                            heightContainer: 56,
                            widthContainer: 353,
                            hasBorder: false,
                            title: 'Sign Up'),
                      ),
                    ),
                    new SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
