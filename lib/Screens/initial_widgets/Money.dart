import 'package:flutter/material.dart';

class Money extends StatefulWidget {
  @override
  _MoneyState createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.transparent),
        height: MediaQuery.of(context).size.height * 0.90,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Text("This is Money Widget",style: TextStyle(fontSize: 30,color: Colors.white)),
          

            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(top: 5),
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(
                width: 0,
                color: Colors.white,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Balance: ",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 20),
                  ),
                  Text(
                    "RS 510",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Get Rs 1000",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Center(
                      child: Text(
                    "Click",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ],
            ),
            SizedBox(height:30,)
          ],
        ));
  }
}
