import 'dart:async';
import 'dart:async' as prefix0;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:langurb/Provider_data/providers_data.dart';

class Rolling extends StatefulWidget {
  @override
  _RollingState createState() => _RollingState();
}

class _RollingState extends State<Rolling> {
  @override
  void initState() {
    super.initState();
    print("bahira");
    Timer.run(() {
      var Provid = Provider.of<Providersdata>(context);
      Timer(Duration(milliseconds: 1400),
          () => {Provid.stop(), Provid.setbet_rslt(1), print("bhitra")});
    });
  }

  int i = 0;

  @override
  Widget build(BuildContext context) {
    double _width = 101.0;
    double _height = 101.0;
    double _rot = 0.0;
    double _marginbotom = 10.0;
    Color _color = Colors.grey.withOpacity(0.1);
    BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
    animate() {
      setState(() {
        // print(i);
        var val = [100.0, 90.0, 80.0, 70.0, 60.0, 50.0, 40.0, 30.0, 30.0, 10.0];
        var valrot = [0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 0.08, 0.07];
        final random = Random();
        print('setstate');
        // Generate a random width and height.
        if (val.length > i) {
          //  _width = val[i];
          // _height = val[i];
          _marginbotom = val[i];
        }
        if (valrot.length > i) {
          //  _width = val[i];
          // _height = val[i];
          _rot = val[i];
        }
        i = i + 1;
      });
    }

    animate();

    return Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 0.5),
          color: Colors.transparent.withOpacity(0.2),
          borderRadius: new BorderRadius.only(
              bottomRight: Radius.circular(15), topLeft: Radius.circular(15)),

          // color: Colors.black12
        ),
        child: Center(
          child: Transform.rotate(
            angle: _rot,
            child: AnimatedContainer(
              margin: EdgeInsets.only(bottom: _marginbotom),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: Duration(microseconds: 1500),
              curve: Curves.elasticOut,
              child: FittedBox(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Rolling',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
