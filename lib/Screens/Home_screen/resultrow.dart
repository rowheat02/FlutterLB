import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class resultrow extends StatelessWidget {
  var data;
  resultrow(this.data);

  @override
  Widget build(BuildContext context) {
    var symbol = data["symbol"];
    var bet = data["bet"];
    var won = data["won"];
    int wonindex = data['wonindex'];

    return Container(
      // width: MediaQuery.of(context).size.width * 0.60,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  child: Container(
                    margin: EdgeInsets.all(2),
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset(
                      'Jpg/$symbol.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  children: <Widget>[
                    Text(
                      "$bet",
                      style: TextStyle(
                          decoration: wonindex == 1
                              ? TextDecoration.lineThrough
                              : TextDecoration.none),
                    ),
                    Text(wonindex==1?"(Returned)":"")
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Text("$won", style: TextStyle()),
              ),
            ],
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width * 0.60,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
