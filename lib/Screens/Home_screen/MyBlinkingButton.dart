import 'package:flutter/material.dart';
import 'package:langurb/Provider_data/providers_data.dart';
import 'package:provider/provider.dart';

class MyBlinkingButton extends StatefulWidget {
   final int wonloss;
  
       const MyBlinkingButton({Key key, this.wonloss}): super(key: key);
  
  @override
  _MyBlinkingButtonState createState() => _MyBlinkingButtonState();
}

class _MyBlinkingButtonState extends State<MyBlinkingButton>
    with SingleTickerProviderStateMixin {
     
  Animation<Color> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    final CurvedAnimation curve =
        CurvedAnimation(parent: controller, curve: Curves.linearToEaseOut);
    animation =
        ColorTween(begin: Colors.white, end:widget.wonloss<0?Colors.red:widget.wonloss==0?Colors.yellow: Colors.green).animate(curve);
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
  Widget build(BuildContext context) {

    return  Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (BuildContext context, Widget child) {
            return new Container(
         
              child: Text(widget.wonloss<0?'Loss':widget.wonloss==0?"Equal":"Profit",style: TextStyle(color:animation.value,fontSize: 20 ),),
            );
          },
        ),
      );
   
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
    }