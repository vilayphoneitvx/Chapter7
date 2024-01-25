import 'package:flutter/material.dart';

class opacity extends StatefulWidget {
  const opacity({super.key});

  @override
  State<opacity> createState() => _opacityState();
}

class _opacityState extends State<opacity> {
  double _opacity = 1.0;
  void _animatedopacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.3 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("AnimatedOpacity"),
        Row(
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 400),
              child: Container(
                height: 100.0,
                width: 100.0,
                child: ElevatedButton(
                  onPressed: () {
                    _animatedopacity();
                  },
                  child: Text('Tap to Fade'),
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}