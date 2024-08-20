import 'package:cofee_shop/Controller/Constant/Colors.dart';
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  String hinttext;
  Widget prifixicon;
  Color iconcolor;
  Color hintcolor;
  TextEditingController controller;

  TextBox({super.key,
    required this.hinttext,
    required this.prifixicon,
    this.iconcolor=Colors.black,
    this.hintcolor=Colors.grey,
    required this.controller,


  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(color:hintcolor ),
          prefixIcon: prifixicon,
          prefixIconColor: iconcolor,
        ),
      ),
    );
  }
}