import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({ Key? key }) : super(key: key);

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List <String> name = ["banana","orange","vanela","mango","anar"];
  /*Map fruit_person = {
    'fruits' : ["banana","orange","vanela","mango"],
    'name' : ["moiz","amna","moiz","amna"],
  };*/
  Map fruit_person = {
    'name' : ["banana","orange","vanela","mango"],
    'icon' : ["moiz","amna","moiz","amna"],
  };
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
      var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("List And Grids")),
        backgroundColor: Colors.green,
        elevation: 10,  //elevation is for light shadow 
      ),
      
      body: Container(
        padding: EdgeInsets.all(10),
        height: h,
        width: w,
        color: Colors.white60,
        //diff btw listview and column in listview we initialiize more than time widget but in column 
                 // jxt in constraint/space but listview have a scrolling functionality 
        
        /*child: ListView.builder(  //in listview.building take all name from list any print one by one on screen
          itemCount: name.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                onTap: (){  //in ontap function print a name on conssole where of a fruit which press on screen
                    print(fruit_person['fruits'][index]);
                } ,
                leading: Icon(Icons.person),  //leading icon is for anykinf of icon
              title: Text(fruit_person['fruits'][index]),
              subtitle: Text(fruit_person['name'][index]),
              ),
            );
          },
        ),*//*
                //gridview      //its also like a box / conatiner
                child: GridView.builder(
                  itemCount: name.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,      //how may grid box are in one row 
                  //crossAxisSpacing: 10,   //horizontaol spacing
                  //mainAxisSpacing: 20,    //vertical spacing
                  //childAspectRatio: 2/3,     //2 height 3 width
                ),
                itemBuilder: (context,index){
                    return Card(
                      child : Text(name[index]),
                    );
                },
                ),
            */
              
                child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context , index){
                    return  Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 10,
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Center(child: Text(name[index],style: TextStyle(fontSize: 18,color: Colors.black),)),
                        ),
                      );
                  },
                  /*
                    children: [
                      Container(
                        height: 80,
                        child: Card(
                          elevation: 10,
                          color: Colors.deepOrange,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          margin: EdgeInsets.all(10),
                          child: Center(child: Text("Moiz khan",style: TextStyle(fontSize: 20,color: Colors.white),)),
                        ),
                      ),
                      
                    ],*/
                ),
               
      ),
    );
  }
}