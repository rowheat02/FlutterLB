import 'package:flutter/material.dart';
import 'dart:math';

class Playagain extends StatefulWidget {
  @override
  _PlayagainState createState() => _PlayagainState();
}

class _PlayagainState extends State<Playagain> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        // width:100,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          reverse: true,

          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(border: Border.all(color: Colors.yellow.withOpacity(1),width: _controller.value*1)),
            child: Text(
                  "Play Again",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
          ),
        ),
      ),
      builder: (BuildContext context, Widget child) {
        
        return Container(
          
          width: _controller.value*200,
          child: child);
      },
    );
  }
}