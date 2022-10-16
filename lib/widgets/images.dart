import 'package:flutter/material.dart';

class image extends StatelessWidget {
  const image({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Images")),
      body: Center(
        child: Container(
          height: 200,
          width: 180,
          //child : CachedNetworkImage(imageUrl : 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
          
          //),
      ),),
      );

        /*  
                      //for image
              //containor decoration
          decoration: BoxDecoration(
            //box shadow
            boxShadow: [BoxShadow(
              blurRadius: 20,
              spreadRadius: 5.0,  //bold shadow
              color: Colors.blue,
            )],
              //image decoration
            image : DecorationImage(
              //image url
            image: AssetImage('assets/pic1.jpg'),
            //cover images on conatiner
             fit: BoxFit.cover,
            ),           
            color: Colors.green,
          borderRadius: BorderRadius.circular(20),),









        
                                  image from internet network image
       body: Center(
        child: Container(
          height: 200,
          width: 180,
          //containor decoration
          decoration: BoxDecoration(
            //box shadow
            boxShadow: [BoxShadow(
              blurRadius: 20,
              spreadRadius: 5.0,  //bold shadow
              color: Colors.blue,
            )],
              //image decoration
            image : DecorationImage(
              //image url
            image: NetworkImage('https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
            ),
            //cover images on conatiner
             fit: BoxFit.cover,
            ),
           
            color: Colors.green,
          borderRadius: BorderRadius.circular(20),),
        ),
      ),*/
          //box fit for cover full image in container
          
  }
}