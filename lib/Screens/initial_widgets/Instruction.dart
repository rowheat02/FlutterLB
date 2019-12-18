import 'package:flutter/material.dart';

class Instruction extends StatefulWidget {
  @override
  _InstructionState createState() => _InstructionState();
}

class _InstructionState extends State<Instruction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      height: MediaQuery.of(context).size.height*0.90,
      width: 400,
      child: Text("This is Instruction Widget",style: TextStyle(fontSize: 30,color: Colors.white,),
      
    ));
  }
}