import 'package:flutter/material.dart';
import 'package:flutter_application_8/Screens/homeScreen.dart';
import 'package:flutter_application_8/const.dart';
class welcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Column(
          children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: secondaryColor,
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(70))),
                    child: Column(
                      children: [
                        Expanded(child: Image.asset("images/home.gif",scale: 0.8,))
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(

                    color: secondaryColor,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                         
                            Text(
                              "Keep Learning ",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                wordSpacing: 3
                              ),
                            ),
                      SizedBox(height: 7,),
                            Text(
                              "Keep Learning  with\nus,where you are!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black54,
                                wordSpacing: 2.5,
                                height: 1.5,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                  letterSpacing: 2,
                              ),
                            ),
                                           SizedBox(height: 30,),

                            //repleace sizebox with spacer
                            Row(
                              //button position
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  Material(
                    color:   Color.fromARGB(255, 126, 54, 142),
                    borderRadius: BorderRadius.circular(10),
                     child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => homScreen(),));
                      },
                       child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15),
                        child: Text("Get Start" ,
                        style: TextStyle(color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                        ),),
                       ),
                     ),
                   )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
     )));
  }
}
