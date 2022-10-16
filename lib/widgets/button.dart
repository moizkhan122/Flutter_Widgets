import 'package:flutter/material.dart';

class buttonwidget extends StatelessWidget {
  const buttonwidget ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons"),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextButton(
            //button style with material state property widget
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)), //space btw a content
              overlayColor: MaterialStateProperty.all(Colors.black),//hover color splash onpress button
              elevation: MaterialStateProperty.all(20),//little bit shadow around a button
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            child: Text("Press Me",style: TextStyle(fontSize: 20,color: Colors.white),),
              onPressed: () {}, //black onpressed and its for when user press a button so any task will done but now we black onpressed
          ),
          //for space btx both button
          SizedBox(height: 20,),
                                    //diff btw both elevated button have some unique UI design
              //elevated button
              Container(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor), //set from main file primary color
                    //border radius
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      ))
                  ),
                  onPressed: (){
                  print("Moiz");
                }, child: Text("Press Me",style: TextStyle(fontSize: 20,color: Colors.white),),),
              )
        ]),
      ),
    );
  }
}