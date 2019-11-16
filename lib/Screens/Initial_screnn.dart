import 'package:flutter/material.dart';
import 'package:langurb/Screens/Home_screen.dart';
import 'package:langurb/Screens/test.dart';

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // color: Colors.o,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () =>Navigator.pushNamed(context, '/play'),
                
                child: Text("Play",),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/test'),
                child: Container(child: Text("Loan",)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
