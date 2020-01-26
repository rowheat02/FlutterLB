import 'package:flutter/material.dart';
import 'package:langurb/Screens/Home_screen/Resultleft.dart';
import 'package:langurb/Widgets/Symbolcarddecoration.dart';
import 'package:provider/provider.dart';
import 'package:langurb/Provider_data/providers_data.dart';




class Switchresult extends StatefulWidget {
  @override
  _SwitchresultState createState() => _SwitchresultState();
}

class _SwitchresultState extends State<Switchresult> {
  int _count = 1;

  Widget calledWidget;

  @override
  Widget build(BuildContext context) {
    final provdat = Provider.of<Providersdata>(context, listen: true);

    void switchPage(int newNumber) {
       if (newNumber == 1) {
        setState(
          () {
            calledWidget = Resultleft();
          },
        );
      }
      else {
        setState(
          () {
            calledWidget =  Symbolcarddecoration();
          },
        );
      } 

      }
     

    switchPage(provdat.btctrl_result);

    return Column(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          child: calledWidget,
          transitionBuilder: (Widget child, Animation<double> animation) {
            // return SizeTransition(child: child,sizeFactor: animation,);
            return ScaleTransition(child: child, scale: animation);
          },
        ),
      ],
    );
  }
}



