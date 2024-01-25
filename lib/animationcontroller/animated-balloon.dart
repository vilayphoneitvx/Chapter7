import 'package:flutter/material.dart';

class balloon extends StatefulWidget {
  const balloon({super.key});

  @override
  State<balloon> createState() => _balloonState();
}

class _balloonState extends State<balloon> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationFU;
  late Animation<double> _animationGS;

  late double _BLHeight;
  late double _BLWidth;
  late double _BLbottomLT;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 4), vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _BLHeight = MediaQuery.of(context).size.height / 2;
    _BLWidth = MediaQuery.of(context).size.height / 3;
    _BLbottomLT = MediaQuery.of(context).size.height - _BLHeight;

    _animationFU = Tween(begin: _BLbottomLT, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );
    _animationGS = Tween(begin: 50.0, end: _BLWidth).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.75, curve: Curves.elasticInOut),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationFU,
        builder: (context, child) {
          return Container(
            child: child,
            margin: EdgeInsets.only(
              top: _animationFU.value,
              left: _animationGS.value * 0.25,
            ),
            width: _animationGS.value,
          );
        },
        child: GestureDetector(
          child: Image.asset(
            'assets/images/balloon.jpeg',
            height: _BLHeight,
            width: _BLWidth,
          ),
          onTap: () {
            if (_controller.isCompleted) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
          },
        ));
  }
}