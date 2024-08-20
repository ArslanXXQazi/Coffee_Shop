import 'package:cofee_shop/Controller/Components/Mytext.dart';
import 'package:cofee_shop/Controller/Constant/Colors.dart';
import 'package:cofee_shop/Controller/Constant/images.dart';
import 'package:flutter/material.dart';


class MyContainerFav extends StatelessWidget {
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


  MyContainerFav({super.key,
    this.hight=200,
    this.width=170,
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
           border: Border.all(width: borderwidth,color:bordercolor),
        borderRadius: BorderRadius.circular(bordercicular),
      ),
      child: Stack(
        children: [

          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(Appimages.coffee,fit:BoxFit.cover,opacity: AlwaysStoppedAnimation(0.4),),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(image),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(10),
              //   child: Image(image: AssetImage(image),opacity: AlwaysStoppedAnimation(0.9),),
              // ),
              Mytext(text: nameimg,fontsize: 20,fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Mytext(text: price,fontcolor: Appcolor.darkbrown,fontsize: 20,fontWeight: FontWeight.bold,),
                  CircleAvatar(
                    radius: 14,
                    backgroundColor:ciravatacolor,
                    child: Center(child: Icon(icon,color:iconcolor),),
                  )
                ],)
            ],),
          Positioned(
            left: 138,top: 00,
              child: ImageIcon(AssetImage('assets/heart.png'),color: Colors.red,size: 30,),
          )
        ],
      ),
    );
  }
}
