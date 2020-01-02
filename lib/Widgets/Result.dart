import 'package:flutter/material.dart';
import 'package:langurb/Provider_data/providers_data.dart';
import 'package:langurb/Widgets/Resultcard.dart';
import 'package:provider/provider.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provdat = Provider.of<Providersdata>(context);
    var won = provdat.won == 0 ? "Lost" : provdat.won == 1 ? "Won" : "Won=Lost";

    var balance = provdat.Balance;
    var wonlost = provdat.wonlost;
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Row(
                  children: <Widget>[
                    Text("Balance:", style: TextStyle(color: Colors.red[300])),
                    Text(" RS $balance ",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Resultcard(provdat.resultdata[1], 1.0),
              Resultcard(provdat.resultdata[2], 0.5),
              Resultcard(provdat.resultdata[3], 0.2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Resultcard(provdat.resultdata[4], 0.12),
              Resultcard(provdat.resultdata[5], 0.3),
              Resultcard(provdat.resultdata[6], 0.8),
            ],
          ),
          Text(
            "$won RS $wonlost",
            style: TextStyle(
                color: provdat.won == 0
                    ? Colors.red
                    : provdat.won == 1 ? Colors.green : Colors.white),
          ),
          FlatButton(
            onPressed: () => provdat.btctrlresult(),
            child: Text(
              "Play Again",
              style: TextStyle(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
