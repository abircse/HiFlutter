import 'package:flutter/material.dart';

void main() {
  /** Entry Point of App when run **/
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /** Remove Debug BANNER from corner of app **/
      debugShowCheckedModeBanner: false,
      /** Scaffold is a scale-ton of App to make app easily **/
      home: Scaffold(
        /** App toolbar **/
        appBar: AppBar(
          title: const Text('Flutter App Toolbar'),
        ),
        /** Body of App/UI **/
        body: const Center(child: Text(
          'Welcome to My First Flutter App',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black,fontSize: 20.0),
        )),
        /** Bottom Navigation Bar **/
        bottomNavigationBar: BottomNavigationBar(
          /** Add items into bottom navigation by using separate comma [BottomNavigationBarItem] **/
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, /* color: Colors.blue */ semanticLabel: 'A home icon'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, /* color: Colors.blue */ semanticLabel: 'A Group icon'),
              label: 'Group',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, /* color: Colors.blue */ semanticLabel: 'A Settings icon' ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
