import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  String hinttext;
  Widget prifixicon;
  Color iconcolor;
  Color hintcolor;
  Color bordercolor;
  double bordercircular;
  double borderwidth;

  Searchbar({super.key,
    required this.hinttext,
    required this.prifixicon,
    this.iconcolor=Colors.black,
    this.hintcolor=Colors.grey,
    this.bordercircular=20,
    this.borderwidth=1,
    this.bordercolor=Colors.grey,


  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(bordercircular),
        border: Border.all(color: bordercolor,width: borderwidth)
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(color:hintcolor ),
          prefixIcon: prifixicon,
          prefixIconColor: iconcolor,
          border: InputBorder.none
        ),
      ),
    );
  }
}