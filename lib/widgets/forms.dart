import 'package:flutter/material.dart';

class form extends StatefulWidget {
  const form({ Key? key }) : super(key: key);

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  final formkey = GlobalKey<FormState>(); //globally define for forms
  String firstname = " ";
  String lastname = " ";
  String email = " ";
  String password = " ";

  //--------FUNTION FOR VALIDATE SUBMIT BOTTON----------
    trysubmit(){
      //checj this forms validate or not
      final isvalid = formkey.currentState!.validate();   //excilimination is for null safety
      if(isvalid){
        //saved all values in variables
        formkey.currentState!.save();
        submitform();
      }
      else{
        print('error');
      }
    }
    //store values in variable
    submitform(){
        print(firstname);
        print(lastname);
        print(email);
        print(password);
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Form")),),

      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
      key: formkey,
      child: Column(
        children: <Widget>[
          //first name
          TextFormField(
                  decoration: InputDecoration(hintText: "Enter first name"),
                  key: ValueKey("first name"),
                  validator :(value){
                    //checking if textform is empty validation
                    if(value.toString().isEmpty || value == null ){
                      return "first name should not empty";
                    }
                    else{
                      return null;
                    } 
                  },
                  onSaved: (value){
                    firstname = value.toString();
                  },
              ),
              SizedBox(height: 10,),
                //last name
              TextFormField(
                  decoration: InputDecoration(hintText: "Enter last name"),
                  key: ValueKey("last name"),
                  validator :(value){
                    //checking if textform is empty validation
                    if(value.toString().isEmpty || value == null ){
                      return "last name should not empty";
                    }
                    else{
                      return null;
                    } 
                  },
                  onSaved: (value){
                  lastname = value.toString();
                  },
              ),
                  SizedBox(height: 10,),
                //email
              TextFormField(
                  decoration: InputDecoration(hintText: "Enter email"),
                  key: ValueKey("email"),
                  validator :(value){
                    //checking if textform is empty validation
                    if(value.toString().isEmpty || value == null ){
                      return "email should not empty";
                    }
                    else{
                      return null;
                    } 
                  },
                  onSaved: (value){
                    email = value.toString();
                  },
              ),
                  SizedBox(height: 10,),
                  //password
              TextFormField(
                  decoration: InputDecoration(hintText: "Enter password"),
                  key: ValueKey("password"),
                  validator :(value){
                    //checking if textform is empty validation
                    if(value.toString().length>5 ){
                      return "password should not less then 5";
                    }
                    else{
                      return null;
                    } 
                  },
                  onSaved: (value){
                    password = value.toString();
                  },
              ),
          // Add TextFormFields and button here.
          TextButton(
            onPressed: (){
              //when user clicj on this button this function call
            trysubmit();
          }, child: Text("Submit"))
        ],
      ),
    ),
        ),
      ),

    );
  }
}
