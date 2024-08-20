import 'package:cofee_shop/Controller/Components/Mybutton.dart';
import 'package:cofee_shop/Controller/Components/Mytext.dart';
import 'package:cofee_shop/Controller/Components/Text-Box1.dart';
import 'package:cofee_shop/Controller/Constant/Colors.dart';
import 'package:cofee_shop/Controller/Constant/images.dart';
import 'package:cofee_shop/Veiws/Login-screen/Login-Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
   Signup({super.key});

  TextEditingController mailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController confirmpasswordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Image.asset(Appimages.login,fit: BoxFit.cover,),
        )),

        Expanded(child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Stack(children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/coffee.jpg',fit: BoxFit.cover,opacity: AlwaysStoppedAnimation(0.1),),
            ),
            Center(child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Mytext(text: 'Sign Up',fontsize: 30,fontcolor:Appcolor.darkbrown,fontWeight: FontWeight.bold,fontfamily: "FontMain",),
                  ),
                  SizedBox(height: 10,),
                  TextBox(hinttext: 'Enter Email', prifixicon: Icon(Icons.mail),iconcolor: Appcolor.darkbrown,hintcolor: Appcolor.darkbrown,controller: mailcontroller,),
                  SizedBox(height: 10,),
                  TextBox(hinttext: 'Enter Password', prifixicon: Icon(Icons.lock),iconcolor: Appcolor.darkbrown,hintcolor: Appcolor.darkbrown,controller: passwordcontroller,),
                  SizedBox(height: 10,),
                  TextBox(hinttext: 'Confirm Password', prifixicon: Icon(Icons.lock),iconcolor: Appcolor.darkbrown,hintcolor: Appcolor.darkbrown,controller: confirmpasswordcontroller,),
                  SizedBox(height: 10,),
                  Mybutton(text: 'Sign up',buttoncolor: Appcolor.darkbrown,bordercircular: 20,fontWeight: FontWeight.bold,width: 200,
                      ontab:()
                      {
                        Get.to(()=>LoginScreen(),transition: Transition.cupertino,duration: Duration(milliseconds: 2000));
                        Get.snackbar('', '',
                          backgroundColor: Colors.white,
                          duration: Duration(seconds: 2),
                          titleText: Mytext(text: 'Sign in',fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,),
                          messageText: Mytext(text: 'Enter your email and password',fontcolor: Appcolor.darkbrown,),
                        );
                      }),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Mytext(text: 'You have already have account ',fontcolor: Appcolor.darkbrown,),
                   GestureDetector(onTap: (){
                     Get.to(()=>LoginScreen(),transition: Transition.cupertino,duration: Duration(milliseconds: 2000));
                     Get.snackbar('', '',
                       backgroundColor: Colors.white,
                       duration: Duration(seconds: 2),
                       titleText: Mytext(text: 'Sign in',fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,),
                       messageText: Mytext(text: 'Enter your email and password',fontcolor: Appcolor.darkbrown,),
                     );
                   },
                       child: Mytext(text: 'Signin',fontcolor: Appcolor.darkbrown,fontWeight: FontWeight.bold,fontsize: 20,)),
                
                  ],),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      height: 1,
                      width: 150,
                      color: Appcolor.darkbrown,
                    ),
                    Mytext(text: 'OR',fontWeight:FontWeight.bold,fontsize: 15,fontcolor: Appcolor.darkbrown,),
                    Container(
                      height: 1,
                      width: 150,
                      color: Appcolor.darkbrown,
                    ),
                  ],),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(Appimages.facebook),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(Appimages.google),
                    ),
                      SizedBox(width: 20,),
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(Appimages.apple),
                      ),
                  ],)
                
                ],),
              ),
            ),)
          ],),
        )),
      ],),
    );
  }
}
