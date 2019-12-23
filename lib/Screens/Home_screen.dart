import 'dart:async';

import 'package:flutter/material.dart';
import 'package:langurb/Provider_data/providers_data.dart';
import 'package:langurb/Widgets/Betting_control.dart';
import 'package:langurb/Widgets/Result.dart';
import 'package:langurb/Widgets/Rolling.dart';
import 'package:langurb/Widgets/Symbolcarddecoration.dart';
import 'package:provider/provider.dart';
import 'package:langurb/Functions/Allfunc.dart';
import 'package:langurb/Provider_data/providers_data.dart';



class Home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provdat = Provider.of<Providersdata>(context, listen: true);
    provdat.load();
    provdat.setBalanceeinitial();

    // var Bls=SetBalancee();
    // provdat.setBalance(Bls);
    var bls = provdat.Balance;
    var ctrl_rslt = provdat.btctrl_result;

    var scaffold = new Scaffold(
        body: Container(
      child: Container(
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue[900], Colors.lightBlue[900]])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Symbolcarddecoration(),
                   Column(
                  children: <Widget>[
                    // Text("Balance:$bls",style: TextStyle(color: Colors.red)),
                    ctrl_rslt == 0 ? BettingControl() :ctrl_rslt == 2 ?  Rolling():Result()
                    // BettingControl()
                  ],
                ),
                Container(
                  // width: MediaQuery.of(context).size.width * 0.60,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.only(bottom: 10),
                        width: MediaQuery.of(context).size.width * 0.045,
                        height: MediaQuery.of(context).size.width * 0.045,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(15)),
                        ),
                        child: InkWell(
                          onTap:()=> Navigator.pop(context),
                          child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Image.asset("Jpg/home.png")
                              // Text(
                              //   "HOME",
                              //   style: TextStyle(
                              //     color: Colors.black,
                              //   ),
                              // )
                              ),
                        ),
                      ),
                     
                    ],
                  ),
                ),
             
              ],
            ),
          ],
        ),
      ),
    ));

    return (scaffold);
  }
}
