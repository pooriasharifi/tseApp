import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:tse/module/bloc.dart';

class mySwitch extends StatelessWidget {
  const mySwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    boolBloc Swt = boolBloc();
    return StreamBuilder<bool>(
        stream: Swt.Stream$,
        builder: (context, snapshot) {
          return Switch(
            value: snapshot.data ?? false,
            onChanged: (val) => Swt.SetValue(val),
            activeColor: gr,
            inactiveTrackColor: Colors.white,
            inactiveThumbColor: gr,
          );
        });
  }
}

class myDropDpwnButton extends StatelessWidget {
  myDropDpwnButton({this.items = const [], this.func});
  final List<DropdownMenuItem<int>> items;
  final void func;

  @override
  Widget build(BuildContext context) {
    intBloc drp = intBloc();

    return StreamBuilder<int>(
        stream: drp.Stream$,
        builder: (context, snapshot) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: new BoxDecoration(
              border: Border.all(color: whiteTxt),
              borderRadius: BorderRadius.circular(17.5),
            ),
            child: new DropdownButton<int>(
              value: snapshot.data ?? 1,
              items: this.items,
              dropdownColor: bgDark,
              iconEnabledColor: whiteTxt,
              underline: Container(
                color: greyTxt,
              ),
              style: TextStyle(color: whiteTxt),
              onChanged: (val) => drp.SetValue(val!),
              onTap: () {
                return func;
              },
            ),
          );
        });
  }
}
