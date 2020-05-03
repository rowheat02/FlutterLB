import 'dart:async';

import 'package:flutter/material.dart';
import 'package:langurb/Provider_data/providers_data.dart';
// import 'package:langurb/Widgets/Rolling.dart';
import 'package:provider/provider.dart';

class Roll extends StatefulWidget {
  @override
  _RollState createState() => _RollState();
}

class _RollState extends State<Roll> with TickerProviderStateMixin {
  @override
  void initState() {
    rotationController = AnimationController(

        duration: const Duration(milliseconds: 500), vsync: this);
    rotationController.forward(from: 0.0,);
     Timer.run(() {
      var Provid = Provider.of<Providersdata>(context);
      Timer(Duration(milliseconds: 1200),
          () => {Provid.stop(), Provid.setbet_rslt(1)});
    });
    super.initState();
  }

  AnimationController rotationController;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.height * 0.7,
        padding: EdgeInsets.all(40),
        child: RotationTransition(

          turns: CurveTween(curve: Curves.linear).animate(rotationController),
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.2,
            // height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.orange.withOpacity(0.8),
          ),
        ));
  }
}
