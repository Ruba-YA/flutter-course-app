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
      appBar: AppBar(
        title: Text('Course Details'),backgroundColor: secondaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/$imagePath.png',
                height: 150,
                width: 150,
              ),
              SizedBox(height: 20.0),
              Text(
                courseName,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Course description goes here...',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Add your logic here
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>courseScreen()));
                },
                child: Text('Enroll Now'),
                style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}