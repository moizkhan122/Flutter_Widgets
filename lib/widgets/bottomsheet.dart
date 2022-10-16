import 'package:flutter/material.dart';

class bottomsheet extends StatelessWidget {
  const bottomsheet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom sheet"),backgroundColor: Colors.orange,),

      body: Center(child: ElevatedButton(child: Text("BottomSheet"),
      onPressed: (){
        //bottom sheet
        showModalBottomSheet(
          elevation: 0,
          isDismissible: false,   
          enableDrag: true,   //dragdowm for closed
          backgroundColor: Theme.of(context).primaryColor,  //primary color in bottom sheet
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20))
            ),
          context: context, builder: (context){
            return Column(
              //for no extra space in bottom sheet
              mainAxisSize: MainAxisSize.min,
              children:[
                ListTile(
                  title: Text("orange"),
                  subtitle: Text("orange shake"),
                ),

                ListTile(
                  title: Text("bnana"),
                  subtitle: Text("bnana shake"),
                ),

                ListTile(
                  title: Text("mango"),
                  subtitle: Text("mango shake"),
                ),

                ListTile(
                  title: Text("pienapple"),
                  subtitle: Text("pienapple shake"),
                ),
            ],);
        });
      },
      )),
    );
  }
}