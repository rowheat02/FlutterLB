import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        color: Colors.white.withOpacity(0.9),
        alignment: Alignment.center,
        child: Container(
                    margin: EdgeInsets.all(2),
                    width: 90,
                    height: 90,
                    child: SvgPicture.asset(
                      'Jpg/$symbol.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
        
        // Text(
        //   symbol.toString(),
        //   textAlign: TextAlign.center,
        // ),
      ),
    );
  }
}
