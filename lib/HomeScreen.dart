import 'dart:math';

import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeScreen> {

  double? _height;
  double? _width;


  int c=1;

  void play(){
    setState(() {
      for(int i=1;i<=c;i++){
        c=Random().nextInt(6)+1;

      }

    });

  }



  @override
  Widget build(BuildContext context) {



     _height=MediaQuery.of(context).size.height;
     _width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.blue.shade900,
        title:const Center(
          child:  Text("DiscRoll",style: TextStyle(
            fontSize:23,
            fontWeight: FontWeight.bold,
            color: Colors.white,

          ),),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(


                child: Container(

                  height: _height!*0.30,
                  
                  child: Image.asset("assets/images/dice-$c.png",),


                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                ),
              ),



          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: play,
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.blue.shade900
             ),
              child: Row(
                mainAxisSize: MainAxisSize.min,

                children: [

                  Icon(Icons.ads_click,color: Colors.green,),
                  SizedBox(width: 10,),
                  Text("Click Here",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),),


                ],
              ),)
        ],
      ),

      );
  }
}
