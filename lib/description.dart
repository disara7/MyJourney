import 'package:flutter/cupertino.dart';
import 'travelcard.dart';
import 'package:flutter/material.dart';

class description extends StatefulWidget {
  @override
  _descriptionState createState() => _descriptionState();
}

class _descriptionState extends State<description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedItemColor: const Color(0xFFB7B7B7),
      //   selectedItemColor: const Color(0xFFFE8C68),
      //   items: [
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text("Home"),
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.bookmark),
      //       // title: Text("BookMark"),
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.location_on),
      //       // title: Text("Destination"),
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications),
      //       // title: Text("Notification"),
      //     ),
      //   ],
      // ),
    );
  }
}
