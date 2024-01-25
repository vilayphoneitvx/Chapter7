import 'package:flutter/material.dart';

class CrossFade extends StatefulWidget {
  const CrossFade({super.key});

  @override
  State<CrossFade> createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFade> {
  bool _CrossFadeSSF = true;
  void _CrossFade() {
    setState(() {
      _CrossFadeSSF = _CrossFadeSSF ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("AnimatedCrossFade"),
        Row(
          children: [
            Stack(
              children: [
                AnimatedCrossFade(
                  firstChild: Container(
                    height: 100.0,
                    width: 100.0,
                  ),
                  secondChild: Container(
                    height: 300.0,
                    width: 300.0,
                  ),
                  crossFadeState: _CrossFadeSSF
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 500),
                  sizeCurve: Curves.bounceOut,
                ),
                Positioned.fill(
                    child: ElevatedButton(
                  onPressed: () {
                    _CrossFade();
                  },
                  child: Text('Tap to \nfade color & size'),
                  style: ElevatedButton.styleFrom(
                      primary: _CrossFadeSSF ? Colors.red : Colors.green),
                ))
              ],
            )
          ],
        ),
      ],
    );
  }
}