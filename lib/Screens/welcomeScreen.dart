import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: BoxDecoration(color: Colors.white),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 223, 159),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(70))),
              child: Image.asset(
                "images/home.gif",
                alignment: Alignment.centerRight,
                scale: 0.8,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 223, 159),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 40, bottom: 30),
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: Column(
                  children: [
                    Text(
                      "keep learning ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "keep learning Learning with us..",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17, color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    SizedBox(height: 60),
                   Material(
                    color:  Color.fromARGB(255, 145, 73, 141),
                    borderRadius: BorderRadius.circular(10),
                     child: InkWell(
                      onTap: (){
                        Navigator.of(context);
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
