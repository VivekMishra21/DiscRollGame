import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:changeexpression/HomeScreen.dart';

void main(){
  runApp(Myapp());
}


class Myapp extends StatelessWidget{


  @override
  Widget build (BuildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}