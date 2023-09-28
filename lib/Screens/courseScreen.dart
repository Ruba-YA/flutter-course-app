import 'package:flutter/material.dart';
import 'package:flutter_application_8/const.dart';

class CourseScreen extends StatelessWidget {
  final String courseName;
  final String imagePath;

  CourseScreen({required this.courseName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Flutter Full Course For Beginners",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'images/$imagePath.png',
                      height: 200,
                      width: 200,
                      scale: 0.8,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "59 hours, 100 UI Practice",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Course Content",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  CourseContentList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseContentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CourseContentItem(
          title: "Introduction to Flutter",
          duration: "2 hours",
        ),
        CourseContentItem(
          title: "Layouts and Widgets",
          duration: "3 hours",
        ),
        CourseContentItem(
          title: "State Management",
          duration: "4 hours",
        ),
        CourseContentItem(
          title: "Networking and API Integration",
          duration: "3 hours",
        ),
        CourseContentItem(
          title: "Building UI Components",
          duration: "2 hours",
        ),
      ],
    );
  }
}

class CourseContentItem extends StatelessWidget {
  final String title;
  final String duration;

  CourseContentItem({required this.title, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(
            Icons.play_circle_fill,
            size: 20,
            color: Colors.black54,
          ),
          SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),
          Text(
            duration,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}