import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prac/widgets/alertdialog.dart';
import 'package:flutter_prac/widgets/bottomsheet.dart';
import 'package:flutter_prac/widgets/snackbar.dart';


class BottomNavgigation extends StatefulWidget {
  const BottomNavgigation({ Key? key }) : super(key: key);
  @override
  State<BottomNavgigation> createState() => _BottomNavgigationState();
}
class _BottomNavgigationState extends State<BottomNavgigation> {
  @override

  
int selectedindex = 0;  //get updated
/*
List<Widget> widgets = [
  Text("home"),
  Text("search"),
  Text("profile"),
  Text("add"),
]; */
        PageController pageController = PageController(); //for set the pages on bottom navbar

    void ontapped(int index){
        setState(() {
          selectedindex = index;
        });
        pageController.jumpToPage(index);
    }

  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Center(child: Text("Moiz khan")),),
      body: PageView(
        controller: pageController,
        //for pages
        children: [
         
            bottomsheet(),
            alertDialog(),
            snackbar(),
        ],
      ),

          //botom sheeet

      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home" 
          ),

          BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "search" 
          ),

          BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "profile" 
          ),

          BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: "add" 
          ),
      ],
      currentIndex: selectedindex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: ontapped,
      ), 
    );
  }
}