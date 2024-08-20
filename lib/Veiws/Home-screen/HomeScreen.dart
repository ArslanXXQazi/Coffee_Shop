import 'package:cofee_shop/Controller/Components/Mycontainer.dart';
import 'package:cofee_shop/Controller/Components/Mytext.dart';
import 'package:cofee_shop/Controller/Components/Search-box.dart';
import 'package:cofee_shop/Controller/Components/Text-Box1.dart';
import 'package:cofee_shop/Controller/Constant/Colors.dart';
import 'package:cofee_shop/Controller/Constant/images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController searchcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(Appimages.coffee,fit: BoxFit.cover,opacity: AlwaysStoppedAnimation(0.1),),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 20,left: 20,top: 30),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Mytext(text: 'Arslan Coffee',fontWeight: FontWeight.bold,fontsize: 30,fontcolor: Appcolor.darkbrown,fontfamily: "FontMain",),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Mytext(text: 'Good Morning',fontWeight: FontWeight.bold,fontsize: 20,fontcolor: Appcolor.darkbrown,),
                    Icon(Icons.home,color: Appcolor.darkbrown,)
                  ]),
                  SizedBox(height: 10,),
                  Searchbar(hinttext: '', prifixicon: Icon(Icons.search_rounded,size: 30,color: Appcolor.darkbrown,),bordercolor: Appcolor.darkbrown,borderwidth: 2,),
                  SizedBox(height: 10,),
                  Container(
                    height: 160,
                    width: 450,
                    child: Row(children: [
                      Expanded(
                          flex:70,
                          child: Stack(
                            children: [
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                            //  color: Colors.brown.withOpacity(0.3),
                                child: Image.asset(Appimages.coffee2,fit: BoxFit.cover,opacity: AlwaysStoppedAnimation(1),),
                              ),
                              // Positioned(
                              //   top: 100,
                              //     child: Image(image: AssetImage('assets/coffee3.png'),width: 50,)),
                              // Positioned(
                              //   left: 200,
                              //     child: Image(image: AssetImage('assets/coffelove.png'),width: 50,)),
                              // Positioned(
                              //     left: 30,top: 0,
                              //     child: Image(image: AssetImage('assets/cupicon.png'),width: 50,)),
                              // Positioned(left: 195,top: 95,
                              //     child: Image(image: AssetImage('assets/coffeeicon.png'),width: 50,opacity: AlwaysStoppedAnimation(1),)),
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: Center(child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    //Mytext(text: 'Fuel for the day',fontsize: 25,fontWeight: FontWeight.bold,fontcolor:Colors.white),
                                    // Mytext(text: 'Fuel for the day, one sip at a time',fontcolor: Colors.black,fontsize: 16,fontWeight: FontWeight.bold,),
                                    // Mytext(text: 'Fuel for the day, one sip at a time',fontcolor: Colors.black,fontsize: 16,fontWeight: FontWeight.bold,),
                                    // Mytext(text: 'Fuel for the day, one sip at a time',fontcolor: Colors.black,fontsize: 16,fontWeight: FontWeight.bold,),
                                  ],),),
                              ),

                            ],
                          )),
                      Expanded(
                          flex: 30,
                          child:
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black,
                            child:Image.asset(Appimages.coffee1,fit: BoxFit.cover,),
                          )),
                    ],),
                  ),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Mytext(text: 'Arslan Coffee',fontsize: 20,fontcolor: Appcolor.darkbrown,fontWeight: FontWeight.bold,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                      Mycontainer(image: Appimages.coffee1, nameimg:'Morning Brew', price: '\$5',ciravatacolor: Appcolor.darkbrown,),
                      SizedBox(width: 15,),
                      Mycontainer(image: Appimages.coffee, nameimg:'Mocha Magic', price: '\$5',ciravatacolor: Appcolor.darkbrown,),
                        SizedBox(width: 15,),
                      Mycontainer(image: Appimages.login, nameimg:'Mocha Magic', price: '\$5',ciravatacolor: Appcolor.darkbrown,),
                    ],),
                  ),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Mytext(text: 'Arslan Coffee',fontsize: 20,fontcolor: Appcolor.darkbrown,fontWeight: FontWeight.bold,),
                    ],
                  ),
                  SizedBox(height: 10,),
              
                  Card(
                    color: Colors.brown.shade50,
                    child: ListTile(
                      leading:Image.asset(Appimages.login,),
                      title: Mytext(text: "Coffee",fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,fontsize: 20,),
                      subtitle:Mytext(text: "Best Coffe ever",fontcolor: Appcolor.darkbrown,fontsize: 15,),
                      trailing: CircleAvatar(
                        backgroundColor: Appcolor.darkbrown,
                        child: Center(child: Icon(Icons.add,color: Colors.white,),),
                      )
                    ),
                  ),
                  Card(
                    color: Colors.brown.shade50,
                    child: ListTile(
                        leading:Image.asset(Appimages.login,),
                        title: Mytext(text: "Coffee",fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,fontsize: 20,),
                        subtitle:Mytext(text: "Best Coffe ever",fontcolor: Appcolor.darkbrown,fontsize: 15,),
                        trailing: CircleAvatar(
                          backgroundColor: Appcolor.darkbrown,
                          child: Center(child: Icon(Icons.add,color: Colors.white,),),
                        )
                    ),
                  ),
                  Card(
                    color: Colors.brown.shade50,
                    child: ListTile(
                        leading:Image.asset(Appimages.login,),
                        title: Mytext(text: "Coffee",fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,fontsize: 20,),
                        subtitle:Mytext(text: "Best Coffe ever",fontcolor: Appcolor.darkbrown,fontsize: 15,),
                        trailing: CircleAvatar(
                          backgroundColor: Appcolor.darkbrown,
                          child: Center(child: Icon(Icons.add,color: Colors.white,),),
                        )
                    ),
                  ),
                  Card(
                    color: Colors.brown.shade50,
                    child: ListTile(
                        leading:Image.asset(Appimages.login,),
                        title: Mytext(text: "Coffee",fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,fontsize: 20,),
                        subtitle:Mytext(text: "Best Coffe ever",fontcolor: Appcolor.darkbrown,fontsize: 15,),
                        trailing: CircleAvatar(
                          backgroundColor: Appcolor.darkbrown,
                          child: Center(child: Icon(Icons.add,color: Colors.white,),),
                        )
                    ),
                  ),
              ],),
            ),
          ),
        )
      ],),
    );
  }
}
