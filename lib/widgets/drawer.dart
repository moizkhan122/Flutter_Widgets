import 'package:flutter/material.dart';

class drawerWidget extends StatefulWidget {
  const drawerWidget({ Key? key }) : super(key: key);

  @override
  State<drawerWidget> createState() => _drawerWidgetState();
}

class _drawerWidgetState extends State<drawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          //drawer
          
          drawer: Drawer(
            child: Container(color: Theme.of(context).primaryColor,
            child : ListView(children: [
             DrawerHeader(
               padding: EdgeInsets.all(0),
               child: Container(
               //color: Colors.blue,
               padding: EdgeInsets.all(10),
               child: Row(children:[
                 
                 //for circle border on image
                 CircleAvatar(
                   //for radius
                   radius: 40,
                   //for images url
                   backgroundImage: NetworkImage(
                     'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'
                     ),
                 ),
                 SizedBox(width: 20),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   Text("moiz khan",style: TextStyle(fontSize: 20),),
                   Text("moizsharif82@gmail.com",style: TextStyle(fontSize: 15),)
                 ],)
               ],),
             ),),
             //define listile for number of icond below header
             ListTile(
               leading: Icon(Icons.folder),
               title: Text("My files"),
             ),
              ListTile(
               leading: Icon(Icons.group),
               title: Text("Shared with me"),
             ),
             ListTile(
               leading: Icon(Icons.star),
               title: Text("Starred"),
             ),
             ListTile(
               leading: Icon(Icons.delete),
               title: Text("Trash"),
             ),
                  Divider(),  //its use for underline btw these items

               ListTile(
               leading: Icon(Icons.upload),
               title: Text("Upload"),
             ),
             ListTile(
               leading: Icon(Icons.logout),
               title: Text("Logout"),
             ),

            ],),
            ),
          ),

      appBar: AppBar(title: Text("drawer Widget"),),
      body: Container(child: Center(child: Text("Moiz")),),
    );
  }
}