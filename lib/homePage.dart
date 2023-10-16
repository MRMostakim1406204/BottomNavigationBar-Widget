import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  final tabs = [
    Center(child: Text("Home"),),
    Center(child: Text("Notification"),),
    Center(child: Text("Message"),),
  ];
  int _currentIndex =0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: tabs[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        selectedFontSize: 20,
        selectedItemColor: Colors.pink,
        unselectedIconTheme: IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.black,

        iconSize: 25,
        selectedIconTheme: IconThemeData(color: Colors.red,),
        currentIndex: _currentIndex,

        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: "Notification"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message",),

      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      ),
    );
  }
}
