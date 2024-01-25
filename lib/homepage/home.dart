import 'package:flutter/material.dart';
import 'package:flutter_application_1/animatedcontainer/animated-container.dart';
import 'package:flutter_application_1/animatedcontainer/animated-cross-fade.dart';
import 'package:flutter_application_1/animatedcontainer/animated-opacity.dart';



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ANIMATEDCONTAINER")),
      ),
      body: SafeArea(
          child: Column(
        children: [
          animeated(),
          Divider(),
          CrossFade(),
          Divider(),
          opacity(),
        ],
      )),
    );
  }
}