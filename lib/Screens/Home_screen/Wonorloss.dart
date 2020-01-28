import 'dart:async';

import 'package:flutter/material.dart';
import 'package:langurb/Provider_data/providers_data.dart';
import 'package:provider/provider.dart';

class Wonorloss extends StatefulWidget {
  @override
  _WonorlossState createState() => _WonorlossState();
}

class _WonorlossState extends State<Wonorloss> with TickerProviderStateMixin {
  var val = 40.0;
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    final CurvedAnimation curve =
        CurvedAnimation(parent: controller, curve: Curves.easeOut);
    animation = Tween<double>(begin: 15, end: 20).animate(curve);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
      setState(() {});
    });
    controller.forward();
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var provdat = Provider.of<Providersdata>(context);
    var wonloss=provdat.wononly-provdat.betonly;
    wonloss<0?wonloss=-wonloss:wonloss=wonloss;
    return Center(
        child: Center(
            child: AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget child) {
        return Container(
            padding: EdgeInsets.all(4),
            // width: 90,
            // height: 90,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                // border: Border.all(color: Colors.white, width: 1)
                ),
            child: Center(
              child: Text(
                "RS $wonloss",
                style: TextStyle(color: Colors.white, fontSize: animation.value),
              ),
            ));
      },
    )));
  }
}
