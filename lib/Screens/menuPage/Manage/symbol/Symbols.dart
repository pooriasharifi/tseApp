import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/menuPage/Manage/symbol/symPage.dart';
import 'package:tse/widget/textField.dart';

class symbolPage extends StatefulWidget {
  const symbolPage({Key? key}) : super(key: key);

  @override
  _symbolPageState createState() => _symbolPageState();
}

class _symbolPageState extends State<symbolPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: bgDark,
          appBar: AppBar(
            title: Text(
              'Symbols',
              style: TextStyle(fontSize: 18),
            ),
            centerTitle: false,
            backgroundColor: bgDark,
          ),
          body: Column(
            children: [
              new Container(
                height: 43,
                width: 342,
                child: new txtForm(
                  txtStyle: TextStyle(color: whiteTxt),
                  obsecureTxt: false,
                  lableTxt: 'Search',
                  bgColor: bgDark,
                  txtColor: whiteTxt,
                  siffixColor: whiteTxt,
                  suffixIcon: Icons.zoom_out,
                  action: TextInputAction.done,
                ),
              ),
              new SizedBox(
                height: 20,
              ),
              Expanded(
                child: new GridView.count(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 50,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    crossAxisCount: 2,
                    children: List.generate(15, (int index) {
                      return generateItem(context);
                    })),
              ),
            ],
          )),
    );
  }
}

Card generateItem(context) {
  return new Card(
    color: bgDark,
    // elevation: 4,
    // shadowColor: whiteTxt,

    child: new InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => symPage()));
      },
      child: new Container(
        decoration: new BoxDecoration(
            border: Border.all(
              color: whiteTxt,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(17.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new Text(
              'رمپنا',
              style: TextStyle(color: whiteTxt, fontSize: 13),
            ),
            new SizedBox(
              height: 10,
            ),
            new Text(
              'فرهنگی ، هنری',
              style: TextStyle(color: greyTxt, fontSize: 9),
            )
          ],
        ),
      ),
    ),
  );
}
