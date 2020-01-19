import 'package:flutter/material.dart';
import './Symbolcard.dart';
class Symbolcarddecoration extends StatelessWidget {
  const Symbolcarddecoration({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(bottom: 0,top: 0,left: 0,right: 0),
      // color: Colors.grey,
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.white, width: 0.5),
          border: Border(right: BorderSide(color: Colors.white, width: 0.5)),
          // borderRadius: new BorderRadius.only(bottomRight: Radius.circular(15),topLeft: Radius.circular(15)),
          // color: Colors.transparent.withOpacity(0.2)
          ),
      
      width: MediaQuery.of(context).size.width * 0.60,
      height: MediaQuery.of(context).size.height * 0.8,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Symbolcard(1),Divider(color: Colors.red,),
                  Symbolcard(2),Divider(color: Colors.red,),
                  Symbolcard(3),Divider(color: Colors.red,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Symbolcard(4),Divider(color: Colors.red,),
                  Symbolcard(5),Divider(color: Colors.red,),
                  Symbolcard(6),Divider(color: Colors.red,),
                ],
              ),
            ],
          ),
         
      
    );
  }
}
