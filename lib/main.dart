import 'package:flutter/material.dart';
import 'package:flutter_prac/widgets/animatedText.dart';
import 'package:flutter_prac/widgets/bottomNav.dart';
import 'package:flutter_prac/widgets/bottomsheet.dart';
import 'package:flutter_prac/widgets/button.dart';
import 'package:flutter_prac/widgets/container_sized.dart';
import 'package:flutter_prac/widgets/dismisible.dart';
import 'package:flutter_prac/widgets/drawer.dart';
import 'package:flutter_prac/widgets/dropdown.dart';
import 'package:flutter_prac/widgets/forms.dart';
import 'package:flutter_prac/widgets/images.dart';
import 'package:flutter_prac/widgets/list_grid.dart';
import 'package:flutter_prac/widgets/prac.dart';
import 'package:flutter_prac/widgets/rowcols.dart';
import 'package:flutter_prac/widgets/snackbar.dart';
import 'package:flutter_prac/widgets/alertdialog.dart';
import 'package:flutter_prac/widgets/stack.dart';
import 'package:flutter_prac/widgets/tabbar.dart';

void main(List<String> args){
  runApp( myapp());
}

class myapp extends StatelessWidget {
  const myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor : Colors.orange,
      ),
        home: example(),
    );
  }
}