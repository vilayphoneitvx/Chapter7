import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage/home.dart';
import 'package:flutter_application_1/homepage/homepage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: index(),
    );
  }
}

class index extends StatefulWidget {
  const index({super.key});

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chapter 7"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  MaterialPageRoute r = MaterialPageRoute(
                      builder: (BuildContext context) => MyWidget());
                  Navigator.of(context).push(r);
                },
                child: Text("USING ANIMATEDCONTAINER")),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: () {
                  MaterialPageRoute r = MaterialPageRoute(
                      builder: (BuildContext context) => MyWidget2());
                  Navigator.of(context).push(r);
                },
                child: Text("USING ANIMATIONCONTROLLER")),
          ],
        ),
      ),
    );
  }
}