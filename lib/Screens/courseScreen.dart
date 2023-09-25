import 'package:flutter/material.dart';
import 'package:flutter_application_8/const.dart';

class courseScreen extends StatelessWidget{
  @override
    final String courseName;
  final String imagePath;
    courseScreen({required this.courseName, required this.imagePath});

  Widget build(BuildContext context) {
   return Scaffold(
body:SafeArea(child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
Container(
  height: MediaQuery.of(context).size.height/2,
  width: MediaQuery.of(context).size.width,
  decoration: BoxDecoration(
      color: secondaryColor,

    borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(40)
,
    bottomRight: Radius.circular(40)
  )),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Text("Flutter Full Course For beginers "),
    Center(child:  Image.asset( 'images/$imagePath.png',
  height: 200,
  width: 200,
  scale: 0.8,
  ),),
  SizedBox(height: 40,),
  Text("59 hours , 100 UI Practice"),
  ],)
),
SizedBox(height: 10,),
Padding(padding: EdgeInsets.all(20),
child:Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("Course Content ",
    style: TextStyle(fontSize: 22,
    fontWeight: FontWeight.bold
    ),)
  ],
) ,
)
],)),


   );
  }

}