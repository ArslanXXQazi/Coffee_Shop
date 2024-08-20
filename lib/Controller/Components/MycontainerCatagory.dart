import 'package:cofee_shop/Controller/Components/Mytext.dart';
import 'package:cofee_shop/Controller/Constant/Colors.dart';
import 'package:flutter/material.dart';

class MyContainerCatagory extends StatelessWidget {
  String text;
  String image;
  double hight;
  double width;
  double bordercircular;
  double borderwidth;
  Color  color;
  Color  bordercolor;
 MyContainerCatagory({super.key,
   required this.image,
   required this.text,
   this.hight=50,
   this.width=160,
   this.borderwidth=1,
   this.bordercolor=Colors.brown,
   this.bordercircular=10,
   this.color=Colors.brown,
 });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
          color: color,
        borderRadius: BorderRadius.circular(bordercircular),
        border: Border.all(width: borderwidth,color: bordercolor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Image(image: AssetImage(image)),
          Mytext(text: text,fontcolor: Appcolor.darkbrown,fontsize: 16,fontWeight: FontWeight.bold,),
        ],),
      ),
    );
  }
}
