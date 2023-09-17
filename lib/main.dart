import 'package:flutter/material.dart';
import 'package:flutter_application_8/Screens/welcomeScreen.dart';
void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    home: welcomeScreen(),
   );
  }

}