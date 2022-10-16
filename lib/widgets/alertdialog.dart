//import 'dart:html';

import 'package:flutter/material.dart';

class alertDialog extends StatelessWidget {
  const alertDialog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text("Alert Dialog Box"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showMyDialog(context);
        },child: Text("press me") ),
      ),
    );
  }
}
Future <void> showMyDialog(BuildContext context)async{
  return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
     title: Text("This is alert dialog box"),
     content: SingleChildScrollView(  //its for a text in increse in a vertical form there will be scrolling view
       child: ListBody(
         children: [
           Text("moiz khan"),
           Text("Muhammad moiz khan"),
         ],
       ),
     ),
    );
  });
}