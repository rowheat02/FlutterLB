import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.transparent),
        height: MediaQuery.of(context).size.height * 0.98,
        width: 400,
        child: Text(
          "This is About Widget",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ));
  }
}
