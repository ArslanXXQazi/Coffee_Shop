import 'package:cofee_shop/Controller/Components/MyContainerFav.dart';
import 'package:cofee_shop/Controller/Components/Mycontainer.dart';
import 'package:cofee_shop/Controller/Components/MycontainerCatagory.dart';
import 'package:cofee_shop/Controller/Components/Mytext.dart';
import 'package:cofee_shop/Controller/Components/Search-box.dart';
import 'package:cofee_shop/Controller/Constant/Colors.dart';
import 'package:cofee_shop/Controller/Constant/images.dart';
import 'package:flutter/material.dart';
class Favouritenav extends StatefulWidget {
  const Favouritenav({super.key});

  @override
  State<Favouritenav> createState() => _FavouritenavState();
}

class _FavouritenavState extends State<Favouritenav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(Appimages.coffee,fit: BoxFit.cover,opacity: AlwaysStoppedAnimation(0.1),),
        ),
        Center(child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
          child: SingleChildScrollView(
            child: Column(children: [
              Mytext(text: 'Coffee',fontcolor: Appcolor.darkbrown,fontWeight: FontWeight.bold,fontsize: 35,fontfamily: "FontMain",),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Mytext(text: 'Menu',fontsize: 20,fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,),
              ),
              SizedBox(height: 10,),
              Searchbar(hinttext: '', prifixicon: Icon(Icons.search_rounded,size: 30,color: Appcolor.darkbrown,),borderwidth: 2,bordercolor: Appcolor.darkbrown,),
              SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(right: 260),
               child: Mytext(text: "Catagories",fontsize: 20,fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,),
             ),

             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Padding(
                 padding: const EdgeInsets.all(9.0),
                 child: Row(
                   children: [
                   MyContainerCatagory(image: Appimages.coffeeicon, text: "Brewed Bliss",color: Appcolor.lightbrown,),
                   SizedBox(width: 10,),
                     MyContainerCatagory(image: Appimages.coffeeicon, text: "Coffee Canvas",color: Appcolor.lightbrown,),
                     SizedBox(width: 10,),
                     MyContainerCatagory(image: Appimages.coffeeicon, text: "Mocha Muse",color: Appcolor.lightbrown,),
                     SizedBox(width: 10,),
                     MyContainerCatagory(image: Appimages.coffeeicon, text: "Caramel Cloud",color: Appcolor.lightbrown,),
                 ],),
               ),
             ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                MyContainerFav(image: Appimages.coffee4, nameimg: 'Hazelnut Haven', price: '200rs',borderwidth: 2,bordercolor: Appcolor.darkbrown,ciravatacolor: Appcolor.darkbrown,),
                MyContainerFav(image:  Appimages.coffee1, nameimg: 'Café Noir', price: '200rs',borderwidth: 2,bordercolor: Appcolor.darkbrown,ciravatacolor: Appcolor.darkbrown,),
              ],),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyContainerFav(image: Appimages.coffee2, nameimg: 'Velvet Bean', price: '200rs',borderwidth: 2,bordercolor: Appcolor.darkbrown,ciravatacolor: Appcolor.darkbrown,),
                  MyContainerFav(image:  Appimages.coffee5, nameimg: 'Brewtiful Day', price: '200rs',borderwidth: 2,bordercolor: Appcolor.darkbrown,ciravatacolor: Appcolor.darkbrown,),
                ],),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyContainerFav(image:  Appimages.coffee6, nameimg: 'Espresso Essence', price: '200rs',borderwidth: 2,bordercolor: Appcolor.darkbrown,ciravatacolor: Appcolor.darkbrown,),
                  MyContainerFav(image:  Appimages.coffee1, nameimg: 'Cup of Joy', price: '200rs',borderwidth: 2,bordercolor: Appcolor.darkbrown,ciravatacolor: Appcolor.darkbrown,),
                ],),
            ],),
          ),
        ),)
      ],)
    );
  }
}
