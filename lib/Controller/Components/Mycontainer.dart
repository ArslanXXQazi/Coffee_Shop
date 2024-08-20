import 'package:cofee_shop/Controller/Components/Mytext.dart';
import 'package:cofee_shop/Controller/Constant/Colors.dart';
import 'package:cofee_shop/Controller/Constant/images.dart';
import 'package:flutter/material.dart';


class Mycontainer extends StatelessWidget {
  double hight;
  double width;
  double bordercicular;
  double borderwidth;
  Color containercolor;
  Color bordercolor;
  Color ciravatacolor;
  Color iconcolor;
  String image;
  String nameimg;
  String price;
  IconData icon;


   Mycontainer({super.key,
     this.hight=180,
     this.width=115,
     this.borderwidth=1,
     this.containercolor=Colors.white,
     this.bordercolor=Colors.grey,
     this.bordercicular=10,
     required this.image,
     required this.nameimg,
     required this.price,
     this.icon=Icons.add,
     this.iconcolor=Colors.white,
     this.ciravatacolor=Colors.orange

   });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
        color: containercolor,
     //   border: Border.all(width: borderwidth,color:bordercolor),
        borderRadius: BorderRadius.circular(bordercicular),
      ),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(Appimages.coffee,fit:BoxFit.cover,opacity: AlwaysStoppedAnimation(0.1),),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(image),
              ),
            // Padding(
            //   padding: const EdgeInsets.all(0),
            //   child: Image(image: AssetImage(image),opacity: AlwaysStoppedAnimation(0.9),),
            // ),
            Mytext(text: nameimg,fontsize: 18,fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Positioned(

                  child: Mytext(text: price,fontcolor: Appcolor.darkbrown,fontsize: 20,)),
              CircleAvatar(
                radius: 14,
                backgroundColor:ciravatacolor,
                child: Center(child: Icon(icon,color:iconcolor),),
              )
            ],)
          ],),
        ],
      ),
    );
  }
}
