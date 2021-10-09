import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/menu.dart';
import 'package:tse/widget/Bottun.dart';
import 'package:tse/widget/textField.dart';

class confirmPage extends StatefulWidget {
  const confirmPage({Key? key}) : super(key: key);

  @override
  _confirmPageState createState() => _confirmPageState();
}

class _confirmPageState extends State<confirmPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgDark,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  txtForm(
                    txtStyle: TextStyle(color: Colors.white),
                    obsecureTxt: false,
                    lableTxt: 'Confirm Code',
                    bgColor: bgDark,
                    txtColor: Colors.white,
                    siffixColor: bgDark,
                    suffixIcon: null,
                    action: TextInputAction.done,
                  ),
                  new SizedBox(
                    height: 65,
                  ),
                  new Container(
                    decoration: new BoxDecoration(
                        //   boxShadow: [
                        //   BoxShadow(
                        //       color: gr,
                        //       spreadRadius: 0,
                        //       blurRadius: 12,
                        //       offset: Offset(0, 3))
                        // ]
                        ),
                    child: new GestureDetector(
                      child: new bottonWidget(
                          heightContainer: 59,
                          widthContainer: 253,
                          hasBorder: false,
                          title: 'Confirm'),
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => menuPage())),
                    ),
                  ),
                  new SizedBox(
                    height: 200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Text('I dont resive Code',
                          style: TextStyle(
                            color: whiteTxt,
                          )),
                      new SizedBox(
                        width: 5,
                      ),
                      new Container(
                        child: new InkWell(
                          onTap: () {},
                          child: new Text(
                            'Resend',
                            style: TextStyle(color: gr),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
