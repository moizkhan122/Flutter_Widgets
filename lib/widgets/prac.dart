import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prac/widgets/snackbar.dart';
import 'package:flutter_prac/widgets/stack.dart';

class example extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("Shoes Catalog",style: TextStyle(color: Colors.black),))),
      body : Stack(children: [
        Positioned(child: Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),),
        Positioned(
          left: 30,
          top: 7,
          child: TextFormField(
              decoration: InputDecoration(border: ),
          )),
      ],));
  }
}
/* Container(
            //margin: EdgeInsets.only(top: 5,bottom: 0),
            decoration: BoxDecoration(
               color: Colors.black,
              borderRadius: BorderRadius.circular(20),),
          height: 60,
          width: 240,
        ),*/