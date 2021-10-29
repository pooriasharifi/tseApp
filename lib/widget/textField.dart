import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';

class txtForm extends StatelessWidget {
  final action;
  final onSave;
  final onCheng;
  final TextStyle txtStyle;
  final bool obsecureTxt;
  final String lableTxt;
  final Color bgColor;
  final Color txtColor;
  final icon;
  final suffixIcon;
  final Color siffixColor;
  final Validat;
  final bool customBr;
  final BorderSide crBorder;

  const txtForm(
      {Key? key,
      this.action,
      this.onSave,
      this.onCheng,
      required this.txtStyle,
      required this.obsecureTxt,
      required this.lableTxt,
      required this.bgColor,
      required this.txtColor,
      this.icon,
      required this.siffixColor,
      required this.suffixIcon,
      this.Validat,
      this.customBr = true,
      this.crBorder = const BorderSide()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new TextFormField(
        autofocus: false,
        textInputAction: action,
        onSaved: onSave,
        onChanged: onCheng,
        validator: Validat,
        style: txtStyle,
        obscureText: obsecureTxt,
        decoration: new InputDecoration(
            labelText: lableTxt,
            fillColor: bgColor,
            labelStyle: new TextStyle(color: txtColor),
            filled: true,
            enabledBorder: new OutlineInputBorder(
              borderRadius: BorderRadius.circular(17.5),
              borderSide:
                  customBr ? (BorderSide(color: Colors.white)) : crBorder,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17.5),
                borderSide: customBr ? (BorderSide(color: gr)) : crBorder),
            prefixIcon: Icon(
              icon,
              size: 16,
              color: gr,
            ),
            suffixIcon: Icon(
              suffixIcon,
              size: 16,
              color: siffixColor,
            )),
      ),
    );
  }
}
