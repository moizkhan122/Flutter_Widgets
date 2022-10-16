import 'dart:math';

import 'package:flutter/material.dart';

class dismisibleWidget extends StatefulWidget {
  const dismisibleWidget({ Key? key }) : super(key: key);

  @override
  State<dismisibleWidget> createState() => _dismisibleWidgetState();
}

class _dismisibleWidgetState extends State<dismisibleWidget> {
  List <String> fruits = ["apple","mango","bnana","orange"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismisible Widget"),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context,index){
          final fruit = fruits[index];
          return Dismissible(
            onDismissed: (direction){
              if(direction == DismissDirection.startToEnd){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
                  backgroundColor: Colors.red,
                  ));
              }
              else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
                  backgroundColor: Colors.green,));
              }
            },
            key: Key(fruit),
              background: Container(color: Colors.red,),
              secondaryBackground: Container(color: Colors.green,), 
             child: Card(
              child: ListTile(
                    title: Text(fruits[index]),
              ),
            ));
        },
        ),
    );
  }
}