import 'package:flutter/material.dart';

class container_Sized extends StatelessWidget {
  const container_Sized({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(  //its a roof of my app which have a aapbar/drawer widgets
      
      appBar: AppBar(             //its like navbaar
      //backgroundColor: Colors.black,
        title: Text("Moiz Khan"),
      ),
      body: Center(
        child: Container(
          
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            //shape: BoxShape.circle,
            //borderRadius: BorderRadius.circular(20),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              ),
              //some shadow around a conatiner
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 20, //its for more shadow around it
                  color: Colors.grey
                )
              ]
          ),
            child: Center(
              child: Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(" Moiz khan",
                style: TextStyle(fontSize: 20,
                ),
                ),
              ), 
              ),
        ),
      ),
    );
  }
}