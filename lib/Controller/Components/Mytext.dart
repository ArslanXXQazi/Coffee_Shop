import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  String text;
  String fontfamily;
  double fontsize;
  Color  fontcolor;
  FontWeight fontWeight;

  Mytext({super.key,
    required this.text,
    this.fontsize=15,
    this.fontcolor=Colors.black,
    this.fontWeight=FontWeight.normal,
    this.fontfamily='',
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: fontsize,
      color: fontcolor,
      fontWeight: fontWeight,
      fontFamily: fontfamily,
    ),);
  }
}
