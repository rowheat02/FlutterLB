import 'package:flutter/material.dart';
class Animatedcont extends StatefulWidget {
  @override
  _AnimatedcontState createState() => _AnimatedcontState();
}

class _AnimatedcontState extends State<Animatedcont> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    
  return GestureDetector(
    onTap: () {
      setState(() {
        selected = !selected;
      });
    },
    child: Center(
      child: AnimatedContainer(
        width: selected ? 20.0 : 50.0,
        height: selected ? 20.0: 50.0,
        color: Colors.transparent,
        alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
        duration: Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
        child: FlutterLogo(size: 75),
      ),
    ),
  );
}
  }
