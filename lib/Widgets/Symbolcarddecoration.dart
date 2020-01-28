import 'package:flutter/material.dart';
import './Symbolcard.dart';
class Symbolcarddecoration extends StatelessWidget {
  const Symbolcarddecoration({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      // padding: EdgeInsets.only(bottom: 0,top: 0,left: 0,right: 0),
      // color: Colors.grey,
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.white, width: 0.5),
          // border: Border(right: BorderSide(color: Colors.white, width: 0.5)),
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
                  Symbolcard(1),
                  Container(
                    width: 1, height: MediaQuery.of(context).size.width * 0.18,color: Colors.white,),
                  Symbolcard(2),
                  Container(width: 1, height: MediaQuery.of(context).size.width * 0.18,color: Colors.white,),

                  Symbolcard(3),
                ],
              ),
              Container(
                      // width: MediaQuery.of(context).size.width * 0.60,
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(height: 1, width:MediaQuery.of(context).size.width * 0.18,color: Colors.white,),
                     Container(height: 1, width:MediaQuery.of(context).size.width * 0.18,color: Colors.white,),
                      Container(height: 1, width:MediaQuery.of(context).size.width * 0.18,color: Colors.white,),
                  ],
                )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Symbolcard(4),
                  Container(width: 1, height: MediaQuery.of(context).size.width * 0.18,color: Colors.white,),

                  Symbolcard(5),
                  Container(width: 1, height: MediaQuery.of(context).size.width * 0.18,color: Colors.white,),

                  Symbolcard(6),
                ],
              ),
            ],
          ),
         
      
    );
  }
}
