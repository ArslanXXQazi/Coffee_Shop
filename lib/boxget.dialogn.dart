import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DialogBoxClass extends StatefulWidget {
  const DialogBoxClass({super.key});

  @override
  State<DialogBoxClass> createState() => _DialogBoxClassState();
}

class _DialogBoxClassState extends State<DialogBoxClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.dialog(
            AlertDialog(
              backgroundColor: Colors.brown,
              title: Text('Get dialog '),
              content: Text('content of dialog box of get package'),
              actions: [
                ElevatedButton(onPressed: (){
                  Get.back();
                  //Navigator.pop(context);
                }, child: Text('cancel')),
                ElevatedButton(onPressed: (){}, child: Text('Yes'),)
              ],
            )
          );
        }, child: Text('press it')),
      ),
    );
  }
}
