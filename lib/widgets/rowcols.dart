import 'package:flutter/material.dart';

class rowcols extends StatelessWidget {
  const rowcols({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //define mediaQuery for complete height nad width for your screen for conatiner bcz every mob have there own dimension and sized
      var h = MediaQuery.of(context).size.height;
      var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Moiz khan Rowcols"),
      ),
      //take a container for screen full sized
      body: Container(
        height: h,
        width: w,
        color: Colors.deepOrangeAccent,
/*
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            
          //direction is use set as horizontally/vertically the all conatiner in a full conainer setted
          //direction: Axis.vertical,
          //alignment: WrapAlignment.center,
        //put main_assess_allignment in centre for take all conatiner in centre
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Container(height: 60,width: 60,color: Colors.blue,),
              Container(height: 60,width: 60,color: Colors.white,),
              Container(height: 60,width: 60,color: Colors.black,),
              Container(height: 60,width: 60,color: Colors.pink,),
          ],
        ),
*/
            child: Column(
            //direction: Axis.vertical,
            //alignment: WrapAlignment.center,
            
          //direction is use set as horizontally/vertically the all conatiner in a full conainer setted
          //direction: Axis.vertical,
          //alignment: WrapAlignment.center,
        //put main_assess_allignment in centre for take all conatiner in centre
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Container(height: 60,width: 60,color: Colors.blue,),
              Container(height: 60,width: 60,color: Colors.white,),
              Container(height: 60,width: 60,color: Colors.black,),
              Container(height: 60,width: 60,color: Colors.pink,),
          ],
        ),


/*
        child: Wrap(
          //direction is use set as horizontally/vertically the all conatiner in a full conainer setted
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
        //put main_assess_allignment in centre for take all conatiner in centre
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Container(height: 60,width: 60,color: Colors.blue,),
              Container(height: 60,width: 60,color: Colors.white,),
              Container(height: 60,width: 60,color: Colors.black,),
              Container(height: 60,width: 60,color: Colors.pink,),
          ],
        ),*/
        /*
        child: Wrap(
          //direction is use set as horizontally/vertically the all conatiner in a full conainer setted
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
        //put main_assess_allignment in centre for take all conatiner in centre
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Container(height: 60,width: 60,color: Colors.blue,),
              Container(height: 60,width: 60,color: Colors.white,),
              Container(height: 60,width: 60,color: Colors.black,),
              Container(height: 60,width: 60,color: Colors.pink,),
          ],
        */)
      );
  }
}