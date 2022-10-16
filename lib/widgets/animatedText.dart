import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Center(child: Text("Animated Text")),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        AnimatedTextKit(
          animatedTexts:[
            TypewriterAnimatedText("MOiz khan",
            textStyle: TextStyle(fontWeight : FontWeight.bold,
            ),
            speed: Duration(milliseconds: 300),
            ),
          ],
          totalRepeatCount: 4,
          pause: Duration(milliseconds: 600),   //pause time after one counter
          displayFullTextOnTap: true,   //print full text on tap
          stopPauseOnTap: true,     //run on tap
        ),

/*
        AnimatedTextKit(
          animatedTexts:[
            RotateAnimatedText("muhammad",
            textStyle: TextStyle(fontWeight : FontWeight.bold,
            color: Colors.green,
            ),
            ),
             RotateAnimatedText("Moiz",
            textStyle: TextStyle(fontWeight : FontWeight.bold,
            ),
            ),
            RotateAnimatedText("khan",
            textStyle: TextStyle(fontWeight : FontWeight.bold,
            color: Colors.green,
            ),
            ),
            
          ],
         // totalRepeatCount: 4,
          //pause: Duration(milliseconds: 600),   //pause time after one counter
          //displayFullTextOnTap: true,   //print full text on tap
          //stopPauseOnTap: true,     //run on tap
        ),
            */
         AnimatedTextKit(animatedTexts: [
           WavyAnimatedText("Amna",textStyle: TextStyle(fontWeight : FontWeight.bold,fontSize: 15,color: Colors.deepOrange)),
           WavyAnimatedText("Khan",textStyle: TextStyle(fontWeight : FontWeight.bold,fontSize: 15,color: Colors.deepOrange)),
         ],
         totalRepeatCount: 5,
         stopPauseOnTap: true,
         displayFullTextOnTap: true,
         ),

         AnimatedTextKit(animatedTexts: [
           ScaleAnimatedText("Amna",textStyle: TextStyle(fontWeight : FontWeight.bold,fontSize: 20,color: Colors.deepOrange,fontFamily: 'Canterbury')),
           ScaleAnimatedText("Khan",textStyle: TextStyle(fontWeight : FontWeight.bold,fontSize: 20,color: Colors.deepOrange,fontFamily: 'Canterbury')),
         ],
         
         totalRepeatCount: 5,
         stopPauseOnTap: true,
         displayFullTextOnTap: true,
         ),
/*
        AnimatedTextKit(animatedTexts: [
           ColorizeAnimatedText("Amna",textStyle: TextStyle(fontWeight : FontWeight.bold,fontSize: 20,color: Colors.deepOrange,fontFamily: 'Canterbury')),
           ColorizeAnimatedText("Khan",textStyle: TextStyle(fontWeight : FontWeight.bold,fontSize: 20,color: Colors.deepOrange,fontFamily: 'Canterbury')),
         ],
         
         totalRepeatCount: 5,
         stopPauseOnTap: true,
         displayFullTextOnTap: true,
         ),
        */

      ]),
    ),
    );
  }
}