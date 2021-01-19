import 'package:flutter/material.dart';
import 'package:zoom_app/ScreenTwo.dart';
import 'package:zoom_app/ScreenOne.dart';
import 'package:zoom_app/ScreenThree.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

   int selectedIndex = 0;

    List pages = [
     ScreenOnce(),
      Text("Hi 2"),
      Text("Hi 3"),
      Text("Hi 4")

    ];


    void onItemTap(int index)
    {

     selectedIndex = index;

     // setState is used to re render/ re draw UI on the canvas.
     // State Mangement -- Backend
     setState(() {

     });

    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Bottom Navigation Bar"),
     ),
     body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one_outlined),
            label: "Screen"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_two_outlined),
              label: "Screen"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_3_outlined),
              label: "Screen"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_4_outlined),
              label: "Screen"
          ),

        ],
      ),

    );
  }
}
