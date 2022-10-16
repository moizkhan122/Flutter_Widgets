import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //initial index is like index start from where we define index in it
      initialIndex: 1,

      //lenght for how many tabs are u made end its compulsory
      length: 9,
      child: Scaffold(appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Tab_bar"),
        bottom: TabBar(
        //for multiple taps we define isscrollable() widget for more tabs in scroll functionality
        isScrollable: true,
        indicatorColor: Colors.black,   //small arrow ini appbar bottom
        tabs: [
        Tab(icon: Icon(Icons.chat),text: 'chat',),
        Tab(icon: Icon(Icons.chat_bubble),text: 'Status',),
        Tab(icon: Icon(Icons.call),text: 'call',),
        Tab(icon: Icon(Icons.chat),text: 'chat',),
        Tab(icon: Icon(Icons.chat_bubble),text: 'Status',),
        Tab(icon: Icon(Icons.call),text: 'call',),
        Tab(icon: Icon(Icons.chat),text: 'chat',),
        Tab(icon: Icon(Icons.chat_bubble),text: 'Status',),
        Tab(icon: Icon(Icons.call),text: 'call',),
      ]),
      ),
      //content of tabbar over pages
      body: TabBarView(children: [
        Container(child: Center(child: Text("Chat",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),),
        Container(child: Center(child: Text("Status",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),),
        Container(child: Center(child: Text("Call",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),),
         Container(child: Center(child: Text("Chat",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),),
        Container(child: Center(child: Text("Status",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),),
        Container(child: Center(child: Text("Call",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),),
         Container(child: Center(child: Text("Chat",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),),
        Container(child: Center(child: Text("Status",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),),
        Container(child: Center(child: Text("Call",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),),
      ]),

      ),
    );
  }
}