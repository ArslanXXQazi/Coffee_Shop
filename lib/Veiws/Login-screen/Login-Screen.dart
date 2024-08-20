import 'package:cofee_shop/Controller/Components/Mybutton.dart';
import 'package:cofee_shop/Controller/Components/Mytext.dart';
import 'package:cofee_shop/Controller/Components/Text-Box1.dart';
import 'package:cofee_shop/Controller/Constant/Colors.dart';
import 'package:cofee_shop/Controller/Constant/images.dart';
import 'package:cofee_shop/Veiws/Home-screen/HomeScreen.dart';
import 'package:cofee_shop/Veiws/NavBar-Screen/Navbar-screen.dart';
import 'package:cofee_shop/Veiws/auth/Sign-up-scrn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController mailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(child: 
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(Appimages.login,fit:BoxFit.cover,opacity: AlwaysStoppedAnimation(1),),
        )),
        Expanded(child:
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [

            Container(
              height: double.infinity,
              width: double.infinity,
             // color: Colors.brown.withOpacity(0.5),
             child: Image.asset('assets/coffee.jpg',fit: BoxFit.cover,opacity: AlwaysStoppedAnimation(0.1),),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 210),
                        child: Mytext(text: "Sign in",fontsize: 25,fontcolor: Appcolor.darkbrown,fontWeight: FontWeight.bold,fontfamily: 'FontMain',),
                      ),
                      TextBox(hinttext: 'Enter Email', prifixicon: Icon(Icons.mail),iconcolor:Appcolor.darkbrown,hintcolor: Appcolor.darkbrown,controller: mailcontroller,),
                      SizedBox(height: 10,),
                      TextBox(hinttext: 'Enter Password', prifixicon: Icon(Icons.lock),iconcolor:Appcolor.darkbrown,hintcolor: Appcolor.darkbrown,controller: passwordcontroller,),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 135),
                        child: Mytext(text: "Forgot Your Password",fontcolor: Appcolor.darkbrown,),
                      ),
                      SizedBox(height: 20,),
                      Mybutton(text: "Sign in",buttoncolor: Appcolor.darkbrown,fontWeight: FontWeight.bold,bordercircular: 20,width: 200,
                          ontab: (){
                        if(mailcontroller.text==''||passwordcontroller.text=='')
                          {
                            Get.dialog(AlertDialog(
                              backgroundColor: Appcolor.lightbrown,
                              title: Mytext(text: 'Error',fontsize: 30,fontcolor: Appcolor.darkbrown,),
                              content: Mytext(text: 'Please enter email password',fontcolor: Appcolor.darkbrown,),
                              actions: [
                                ElevatedButton(
                                  onPressed: (){
                                  Navigator.pop(context);
                                }, style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Appcolor.darkbrown), ),
                                  child: Mytext(text: "Try agin",fontcolor: Colors.white,),)
                              ],
                            ));
                          }
                        else
                          {
                            if(mailcontroller.text=='arslan@gmail.com'&&passwordcontroller.text=='1234')
                              {
                                Get.to(()=>Navbarscreen(),transition: Transition.cupertino,duration: Duration(milliseconds: 2000));
                              }
                            else
                              {
                                Get.dialog(AlertDialog(
                                  backgroundColor: Appcolor.lightbrown,
                                  title: Mytext(text: 'Error',fontsize: 30,fontcolor: Appcolor.darkbrown,),
                                  content: Mytext(text: 'Email or password is incorrect',fontcolor: Appcolor.darkbrown,),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      }, style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Appcolor.darkbrown), ),
                                      child: Mytext(text: "Try agin",fontcolor: Colors.white,),)
                                  ],
                                ));
                              }
                          }

                          }),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Mytext(text: 'You dont have account? ',fontcolor: Appcolor.darkbrown,),
                        InkWell(onTap:(){
                          Get.to(()=>Signup(),transition: Transition.cupertino,duration: Duration(milliseconds: 2000));
                          Get.snackbar('', '',
                            backgroundColor: Colors.white,
                            duration: Duration(seconds: 2),
                            titleText: Mytext(text: 'Sign up',fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,),
                            messageText: Mytext(text: 'Please create your account',fontcolor: Appcolor.darkbrown,),
                          );
                        },
                            child: Mytext(text: 'SignUp',fontcolor: Appcolor.darkbrown,fontsize: 20,fontWeight: FontWeight.bold,)),
                      ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 1,
                            width: 130,
                            color:Appcolor.darkbrown,
                          ),
                          SizedBox(width: 5,),
                          Mytext(text: 'OR',fontWeight: FontWeight.bold,fontcolor: Appcolor.darkbrown,fontsize: 15,),
                          SizedBox(width: 5,),
                          Container(
                            height: 1,
                            width: 130,
                            color: Appcolor.darkbrown,
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                    //    crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(Appimages.google),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(Appimages.facebook),
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
              ),
            )
          ],),
        )),
      ],)

    );
  }
}
