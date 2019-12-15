import 'package:flutter/material.dart';

class Money extends StatefulWidget {
  @override
  _MoneyState createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      height: MediaQuery.of(context).size.height*0.98,
      width: 400,
      child: Text("This is Money Widget",style: TextStyle(fontSize: 30,color: Colors.white,),
      
    ));
  }
}