import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
  const dropdown({ Key? key }) : super(key: key);

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  @override
  String selected_value = "orange";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Center(child: Text("DropDown widget")),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 70,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            //dropdown button
            child: DropdownButton<String>(
              dropdownColor: Colors.grey.shade100,
              isExpanded: true,
              value : selected_value,
              icon: Icon(Icons.arrow_circle_down_rounded),
                  onChanged: (String? newvalue){
                      setState(() {
                        selected_value = newvalue!;
                      });
                  },
              items: <String> [
                "orange",
                "mango",
                "banana",
                "grapes",
              ].map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem(value: value,child: Text(value));
              }).toList(),
            ),
          ),
        ],
        ),
      ),
    );
  }
}