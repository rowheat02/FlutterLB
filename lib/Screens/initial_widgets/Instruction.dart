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
      height: MediaQuery.of(context).size.height * 0.90,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(border: Border(left:BorderSide(color: Colors.white,width: 1) )),
            padding: EdgeInsets.only(left: 5),
            child: RichText(
              text: TextSpan(
                text: '',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Select any symbol from left',
                      style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white,fontSize: 17)),
                 
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
              Container(
            decoration: BoxDecoration(border: Border(left:BorderSide(color: Colors.white,width: 1) )),
            padding: EdgeInsets.only(left: 5),
            child: RichText(
              text: TextSpan(
                text: '',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Set amount in slider by sliding left and right',
                      style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white,fontSize: 17)),
                 
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(border: Border(left:BorderSide(color: Colors.white,width: 1) )),
            padding: EdgeInsets.only(left: 5),
            child: RichText(
              text: TextSpan(
                text: '',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Add betting amount for selected symbol using add button',
                      style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white,fontSize: 17)),
                 
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
                   Container(
            decoration: BoxDecoration(border: Border(left:BorderSide(color: Colors.white,width: 1) )),
            padding: EdgeInsets.only(left: 5),
            child: RichText(
              text: TextSpan(
                text: '',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Press Roll Button ',
                      style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white,fontSize: 17)),
                 
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
                      Container(
            decoration: BoxDecoration(border: Border(left:BorderSide(color: Colors.white,width: 1) )),
            padding: EdgeInsets.only(left: 5),
            child: RichText(
              text: TextSpan(
                text: '',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Winning amount will be n times of your betting amount(n=number of betted symbol after Rolling)',
                      style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white,fontSize: 17)),
                 
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
                               Container(
            decoration: BoxDecoration(border: Border(left:BorderSide(color: Colors.white,width: 1) )),
            padding: EdgeInsets.only(left: 5),
            child: RichText(
              text: TextSpan(
                text: '',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Bet on multiple symbol in a similar way',
                      style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white,fontSize: 17)),
                 
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}
