import 'package:cofee_shop/Controller/Components/Mybutton.dart';
import 'package:cofee_shop/Controller/Components/Mytext.dart';
import 'package:cofee_shop/Controller/Constant/Colors.dart';
import 'package:cofee_shop/Controller/Constant/images.dart';
import 'package:cofee_shop/Veiws/Login-screen/Login-Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 250,),
              child: Mytext(text: 'Welcome to',fontcolor:Appcolor.darkbrown,fontsize: 25,fontfamily: "FontMain",),
            ),

            Mytext(text: 'Arslan Coffee',fontsize: 40,fontcolor:Appcolor.darkbrown,fontWeight: FontWeight.bold,fontfamily: "FontMain",),

            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Mytext(text: 'Arslan coffee shop',fontcolor:Appcolor.darkbrown,fontsize: 25,fontfamily: "FontMain",),
            ),
            Stack(children: [
              Container(
                height:400,
               width: 550,
                child: Image.asset(Appimages.login,fit: BoxFit.cover,),
              ),
            ],),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Mybutton(text: 'Get Started',buttoncolor: Appcolor.darkbrown,width: 300,fontWeight: FontWeight.bold,
                  ontab: (){
                Get.to(()=>LoginScreen(),transition: Transition.cupertino,duration: Duration(milliseconds: 2500));
                Get.snackbar('', '',
                  backgroundColor: Colors.white,
                  duration: Duration(seconds: 2),
                  titleText: Mytext(text: 'Sign in',fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,),
                  messageText: Mytext(text: 'Enter your email and password',fontcolor: Appcolor.darkbrown,),
                );
                  }),
            )
          ],
        ),
      )
    );
  }
}




