import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:langurb/Provider_data/providers_data.dart';
import 'package:langurb/Screens/Home_screen/MyBlinkingButton.dart';
import 'package:langurb/Screens/Home_screen/Wonorloss.dart';
import 'package:langurb/Screens/Home_screen/resultrow.dart';

import 'package:provider/provider.dart';

class Resultleft extends StatefulWidget {
  @override
  _ResultleftState createState() => _ResultleftState();
}

class _ResultleftState extends State<Resultleft> {
  @override
  Widget build(BuildContext context) {
    final provdat = Provider.of<Providersdata>(context, listen: true);
    var totalbet=provdat.betonly;
    var totalwon=provdat.wononly;
    var wonloss=totalwon-totalbet;

    return Container(
      padding: EdgeInsets.only(bottom: 0, top: 0, left: 0, right: 0),
      // color: Colors.grey,
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.white, width: 0.5),
          // border: Border(right: BorderSide(color: Colors.white, width: 0.5)),
          // borderRadius: new BorderRadius.only(bottomRight: Radius.circular(15),topLeft: Radius.circular(15)),
          // color: Colors.transparent.withOpacity(0.2)
          ),

      width: MediaQuery.of(context).size.width * 0.60,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(color:Colors.yellow ),
            width: MediaQuery.of(context).size.width * 0.60,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(child: Text("")),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text(
                        "Bet",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text("Won",
                          style: TextStyle(fontStyle: FontStyle.italic)),
                    ),
                  ],
                ),
                Container(height: 1,width:MediaQuery.of(context).size.width * 0.60,color: Colors.red,),
                Column(
                    children: provdat.resultlist.map((f) =>
                    resultrow(f)
                    
                    ).toList()),
                     Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(child: Text("Total",style: TextStyle(textBaseline: TextBaseline.alphabetic),textAlign: TextAlign.center,)),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text(
                        "$totalbet",
                        style: TextStyle(color: Colors.red,fontSize: 16),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text("$totalwon",
                          style: TextStyle(color: Colors.red,fontSize: 16)),
                    ),
                  ],
                ),
              
                
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: <Widget>[
          //     MyBlinkingButton(),
          //     SizedBox(width: 4,),
          //     Wonorloss(),
          //   ],
          // ),
          Container(
            width: 80,
            height: 80,
            child: Image.asset(
              wonloss<0?"Jpg/sad.gif":wonloss>0?"Jpg/happy.gif":"Jpg/none.gif",
              // height: 125.0,
              // width: 125.0,
            ),
          ),
          //   Container(
          //   width: 80,
          //   height: 80,
          //   child: Image.asset(
          //         "Jpg/sad.gif",
          //         // height: 125.0,
          //         // width: 125.0,
          //       ),
          // ),

          // Image.network("https://media.giphy.com/media/JlfERQStnPLiM/giphy.gif"),

          SizedBox(
            height: 1,
          )
        ],
      ),
    );
  }
}
