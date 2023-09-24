import 'package:flutter/material.dart';
import 'package:flutter_application_8/Screens/detailsScreen.dart';
import 'package:flutter_application_8/const.dart';

class homScreen extends StatefulWidget {
  @override
  State<homScreen> createState() => _homScreenState();
}

class _homScreenState extends State<homScreen> {
  int index=0;

  List cNames = ['Flutter', 'C#', 'Python', 'React Native','Flutter', 'C#', 'Python', 'React Native'];

  List imageList = ['Flutter', 'C#', 'Python', 'React Native','Flutter', 'C#', 'Python', 'React Native'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          // Hero Section

          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 126, 54, 142),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                     icon:Icon( Icons.dashboard,size: 30,),
                     onPressed: () {
                       Navigator.pop(context);
                     },
                      
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Hi , Ruba",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 3, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search here ...",
                        border: InputBorder.none,
                        hintStyle:
                            TextStyle(color: Colors.black26.withOpacity(0.5)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black45,
                        )),
                  ),
                )
              ],
            ),
          ),

          // End Hero Section 
          SizedBox(
            height: 40,
          ),

          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " Courses",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    letterSpacing: 2,
                    wordSpacing: 2),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 2,
                  color: primaryColor,
                ),
              ),
            ],
          )),

          

          // GridView
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen(  courseName: imageList[index],
          imagePath: imageList[index],);
                        },
                      ));
                    },
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/${imageList[index]}.png",
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(height: 17.0),
                            Text(
                              '${imageList[index]}',
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(height: 60, 
      selectedIndex: index,
      onDestinationSelected: (index) => setState(() {
        this.index=index;
      }),
      destinations: [
        NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home"),
               NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: "Courses"),
               NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            selectedIcon: Icon(Icons.person),
            label: "Profile"),
      ]),
    );
  }
}
