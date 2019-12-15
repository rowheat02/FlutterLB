import 'package:flutter/material.dart';
import 'package:langurb/Screens/initial_widgets/About.dart';
import 'package:langurb/Screens/initial_widgets/Money.dart';
import 'package:langurb/Screens/test.dart';
import 'package:provider/provider.dart';
import '../../Provider_data/providers_data.dart';

class animatedWidget extends StatefulWidget {
  const animatedWidget({Key key}) : super(key: key);

  @override
  _animatedWidgetState createState() => _animatedWidgetState();
}

class _animatedWidgetState extends State<animatedWidget> {
  int _count = 1;

  Widget calledWidget;

  @override
  Widget build(BuildContext context) {
    final provdat = Provider.of<Providersdata>(context, listen: true);

    void switchPage(int newNumber) {
      if (newNumber == 1) {
        setState(
          () {
            calledWidget = Money();
          },
        );
      } else if (newNumber == 2) {
        setState(
          () {
            calledWidget = About();
          },
        );
      }
    }

    switchPage(provdat.animatedswitcherkey);

    return Column(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(milliseconds: 600),
          child: calledWidget,
          transitionBuilder: (Widget child, Animation<double> animation) {
            final offsetAnimation =
                Tween<Offset>(begin: Offset(-5, 0.0), end: Offset(0.1,0.0))
                    .animate(animation);
            // return RotationTransition(child: child, turns: animation);
            return SlideTransition(
              child: child,
              position: offsetAnimation,
            );
          },
        ),
      ],
    );
  }
}
