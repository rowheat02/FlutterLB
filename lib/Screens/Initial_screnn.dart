import 'package:flutter/material.dart';
import 'package:langurb/Screens/Home_screen.dart';
import 'package:langurb/Screens/test.dart';

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white,width: 0.4),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue[900], Colors.lightBlue[900]])),
        // color: Colors.red,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // color: Colors.o,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/play'),
                child: Container(
                  width: 150,
                  padding: EdgeInsets.only(left: 10, right: 18),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4.0, 4.0),
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 2.0,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.play_arrow,
                        color: Colors.black.withOpacity(0.5),
                        size: 50,
                      ),
                      Text(
                        "Play",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/test'),
                child: Container(
                  width: 150,
                  padding: EdgeInsets.only(left: 10, right: 14),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4.0, 4.0),
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 2.0,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                        color: Colors.black.withOpacity(0.5),
                        size: 50,
                      ),
                      Text(
                        "Loan",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/play'),
                child: Container(
                  width: 150,
                  padding: EdgeInsets.only(left: 10, right: 8),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4.0, 4.0),
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 2.0,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Colors.black.withOpacity(0.5),
                        size: 50,
                      ),
                      Text(
                        "About",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
