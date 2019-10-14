import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:langurb/Widgets/Result.dart';

class Resultcard extends StatelessWidget {
  int symbol;
  double rot;


  Resultcard(this.symbol,this.rot);
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rot,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.05,
        height: MediaQuery.of(context).size.width * 0.05,
        color: Colors.yellow,
        alignment: Alignment.center,
        child: Image.asset("Jpg/$symbol.jpg",
        fit: BoxFit.cover,
        )
        
        // Text(
        //   symbol.toString(),
        //   textAlign: TextAlign.center,
        // ),
      ),
    );
  }
}
