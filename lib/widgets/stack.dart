import 'dart:ui';

import 'package:flutter/material.dart';

class stacks extends StatelessWidget {
  const stacks({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Stack!")),),

      body: Stack(
        children: [
            //for position
            Positioned(
              child: Container(
                height: 300,
                
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(image: AssetImage('assets/pic1.jpg'),
                  fit: BoxFit.cover,
                  ),
                ),
               
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Container(
            alignment: Alignment.center,
            child : Text("M.Moiz",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          height: 70,width: 90,//color: Colors.green,
          )),
          Align(alignment: Alignment.topLeft,
          child: Container(alignment: Alignment.center,height: 50,width: 90,child: Text("Amna",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),)
        ],
      ),
    );
  }
}