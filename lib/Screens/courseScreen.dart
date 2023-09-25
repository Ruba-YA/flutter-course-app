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
  child: Image.asset( 'images/$imagePath.png',
  height: 50,
  width: 50,
  scale: 0.8,
  ),
)
],))
   );
  }

}