import 'package:flutter/material.dart';
import 'package:flutter_application_8/Screens/courseScreen.dart';
import 'package:flutter_application_8/const.dart';

class DetailsScreen extends StatelessWidget {
  final String courseName;
  final String imagePath;

  DetailsScreen({required this.courseName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(30.0),
       
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'images/$imagePath.png',
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      courseName,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add your logic here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseScreen(
                              courseName: courseName,
                              imagePath: imagePath,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Enroll Now',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 16.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis velit ac mauris posuere facilisis. Nullam facilisis quam est, nec posuere ligula vulputate a. Integer..',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),

                Row(children: [    Text(
                    "Course Content ",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      
                    ),
                  ),],),

              
                
                ListTile(
                  leading: Icon(Icons.play_circle_filled),
                  title: Text('Introduction to the course'),
                ),
                ListTile(
                  leading: Icon(Icons.play_circle_filled),
                  title: Text('Module 1: Getting Started'),
                ),
                ListTile(
                  leading: Icon(Icons.play_circle_filled),
                  title: Text('Module 2: Advanced Techniques'),
                ),
                ListTile(
                  leading: Icon(Icons.play_circle_filled),
                  title: Text('Module 3: Final Project'),
                ),
                SizedBox(height: 10.0),
                ListTile(
                  leading: Icon(Icons.play_circle_filled),
                  title: Text('Introduction to the course'),
                ),
                ListTile(
                  leading: Icon(Icons.play_circle_filled),
                  title: Text('Module 1: Getting Started'),
                ),
                ListTile(
                  leading: Icon(Icons.play_circle_filled),
                  title: Text('Module 2: Advanced Techniques'),
                ),
                ListTile(
                  leading: Icon(Icons.play_circle_filled),
                  title: Text('Module 3: Final Project'),
                ),
              ],
            ),
          
        ),
      ),
    );
  }
}
