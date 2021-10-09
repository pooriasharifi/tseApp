// class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
//   CustomAppBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);
//
//   @override
//   final Size preferredSize; // default is 56.0
//
//   @override
//   _CustomAppBarState createState() => _CustomAppBarState();
// }
//
// class _CustomAppBarState extends State<CustomAppBar>{
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar( title: Text("Sample App Bar") );
//   }
// }

import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final txtstyle;
  final bool centerTitle;
  const customAppBar({Key? key,required this.title,this.txtstyle,required this.centerTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,style: txtstyle,),
      centerTitle: centerTitle,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
