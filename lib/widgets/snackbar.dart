import 'package:flutter/material.dart';
 class snackbar extends StatelessWidget {
   const snackbar({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Snack Bar"),),

       body: Container(
         child: Center(
           child: ElevatedButton(onPressed:(){
             final snackbar = SnackBar(
               action: SnackBarAction(label:'undo',
               onPressed: (){},
               ),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
               duration: const Duration(milliseconds: 3000),
              behavior: SnackBarBehavior.floating,
               //backgroundColor: Colors.red, 
               content: Text("This is an error"));//initiaze text for showing
             ScaffoldMessenger.of(context).showSnackBar(snackbar);  //calling var snackbar for print on screen
           },
           child: Text("Press me"),
            ),
         ),
       ),
     );
   }
 }