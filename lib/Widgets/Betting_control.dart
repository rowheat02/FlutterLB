import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:langurb/Provider_data/providers_data.dart';
import 'package:langurb/Widgets/Currencycard.dart';
import 'package:langurb/Widgets/Currencyslider.dart';
import 'package:provider/provider.dart';

//  playsound() async {

// }
class BettingControl extends StatefulWidget {
  @override
  _BettingControlState createState() => _BettingControlState();
}

class _BettingControlState extends State<BettingControl> {
  int _count = 0;
  var added=false;


  @override
  Widget build(BuildContext context) {
    var provar = Provider.of<Providersdata>(context);
    var activebals = provar.betdata[provar.active];
    var active = provar.active;
    var balance = provar.Balance;

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
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
              Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: <Widget>[
                  Text("Balance: ", style: TextStyle(color: Colors.red[300])),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(child: child, scale: animation);
                    },
                    child: Text(
                      "RS $balance",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                      key: ValueKey<int>(balance),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        provar.active != null
            ? Card(
                child: Container(
                  decoration: BoxDecoration(color: Colors.yellow),
                  width: MediaQuery.of(context).size.width * 0.05,
                  height: MediaQuery.of(context).size.width * 0.05,
                  child: Container(
                    margin: EdgeInsets.all(4),
                    width: 60,
                    height: 60,
                    child: SvgPicture.asset(
                      'Jpg/$active.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : Container(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            provar.active == null
                ? Text(
                    "No Symbol Selected",
                    style: TextStyle(color: Colors.white),
                  )
                : AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(child: child, scale: animation);
                    },
                    child: Text("RS $activebals",
                        key: ValueKey<int>(activebals),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            // fontFamily: 'jos',
                            color: Colors.white)),
                  ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // new Currencycard(id: 1),
            // new Currencycard(id: 5),
            // new Currencycard(id: 10),
            // new Currencycard(id: 50),
            // new Currencycard(id: 100),
            CurrencySlider(),
          ],
        ),
        Container(
          // margin: EdgeInsets.only(top: 12),
          child: Container(
            padding: EdgeInsets.all(4),
                 decoration: BoxDecoration(
                      // color: Colors.white,
                      // borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border(top:BorderSide( color: Colors.white,width: 0.5),bottom:BorderSide( color: Colors.white,width: 0.5)  )
                      ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                // SizedBox(width: 1,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: active==null?Colors.transparent: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                  child: InkWell(
                    child: Icon(Icons.remove, color:active==null? Colors.brown: Colors.red),
                    onTap: () => {
                      if (provar.active == null)
                        {
                          Flushbar(
                              flushbarPosition: FlushbarPosition.TOP,
                              // title:  "No symbols Selected",
                              forwardAnimationCurve:
                                  Curves.fastLinearToSlowEaseIn,
                              messageText: new Text(
                                "No symbols Selected",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              duration: Duration(milliseconds: 1000),
                              // overlayColor:Colors.red,
                              borderColor: Colors.white,
                              // borderRadius: 50,
                              // backgroundColor:Colors.black,
                              flushbarStyle: FlushbarStyle.GROUNDED,
                              boxShadows: [BoxShadow(color: Colors.white)])
                            ..show(context)
                        },
                      if (provar.betdata[active] >= provar.slidervalue)
                        {
                          provar.addsub(1, context),
                        }
                      else
                        {
                          Flushbar(
                              flushbarPosition: FlushbarPosition.TOP,
                              // title:  "No symbols Selected",
                              forwardAnimationCurve:
                                  Curves.fastLinearToSlowEaseIn,
                              messageText: new Text(
                                "Bet amount is less than slider amount",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              duration: Duration(milliseconds: 1000),
                              // overlayColor:Colors.red,
                              borderColor: Colors.white,
                              // borderRadius: 50,
                              // backgroundColor:Colors.black,
                              flushbarStyle: FlushbarStyle.GROUNDED,
                              boxShadows: [BoxShadow(color: Colors.white)])
                            ..show(context)
                        }
                    },
                  ),
                ),
                // Container(height: 50,width:1,color: Colors.white,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: active==null?Colors.transparent: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                  child: InkWell(
                    child: Icon(Icons.add, color:active==null? Colors.brown: Colors.white,),
                    onTap: () =>{
                      setState((){
                        added=true;
                      }),
                       if (provar.active == null)
                        {
                          Flushbar(
                              flushbarPosition: FlushbarPosition.TOP,
                              // title:  "No symbols Selected",
                              forwardAnimationCurve:
                                  Curves.fastLinearToSlowEaseIn,
                              messageText: new Text(
                                "No symbols Selected",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              duration: Duration(milliseconds: 1000),
                              // overlayColor:Colors.red,
                              borderColor: Colors.white,
                              // borderRadius: 50,
                              // backgroundColor:Colors.black,
                              flushbarStyle: FlushbarStyle.GROUNDED,
                              boxShadows: [BoxShadow(color: Colors.white)])
                            ..show(context)
                        },
                      if (provar.Balance >= provar.slidervalue)
                        {
                          provar.addsub(0, context),
                        }
                      else
                        {
                          Flushbar(
                              flushbarPosition: FlushbarPosition.TOP,
                              // title:  "No symbols Selected",
                              forwardAnimationCurve:
                                  Curves.fastLinearToSlowEaseIn,
                              messageText: new Text(
                                "Slider amount is greater than Balance",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              duration: Duration(milliseconds: 1000),
                              // overlayColor:Colors.red,
                              borderColor: Colors.white,
                              // borderRadius: 50,
                              // backgroundColor:Colors.black,
                              flushbarStyle: FlushbarStyle.GROUNDED,
                              boxShadows: [BoxShadow(color: Colors.white)])
                            ..show(context)
                        }
                    
                    },
                  ),
                  // FlatButton(child: Icon(Icons.remove_circle,color: Colors.orange),onPressed: ()=>{}),
                ),
                //  SizedBox(width: 1,),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Container(margin: EdgeInsets.all(10),),
            InkWell(
              onTap: () => { added?provar.btctrlresult():
               Flushbar(
                              flushbarPosition: FlushbarPosition.TOP,
                              // title:  "No symbols Selected",
                              forwardAnimationCurve:
                                  Curves.fastLinearToSlowEaseIn,
                              messageText: new Text(
                                "Cannot Roll in Zero Bet",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              duration: Duration(milliseconds: 1000),
                              // overlayColor:Colors.red,
                              borderColor: Colors.white,
                              // borderRadius: 50,
                              // backgroundColor:Colors.black,
                              flushbarStyle: FlushbarStyle.GROUNDED,
                              boxShadows: [BoxShadow(color: Colors.white)])
                            ..show(context) 
              
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 6),
                // width: MediaQuery.of(context).size.width * 0.15,
                // height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                    // color: Colors.tealAccent.withOpacity(0.3)
                    ),
                // padding: EdgeInsets.all(15),
                child: Container(
                      padding: EdgeInsets.all(2),
            decoration: BoxDecoration(color: added?Colors.yellow[200]:Colors.grey, border: Border.all(color: Colors.white70.withOpacity(0.6),width: 0.5),
           boxShadow: [
          added? BoxShadow(
            color: Colors.grey,
            blurRadius: 40.0, // soften the shadow
            spreadRadius: 0.1, //extend the shadow
            offset: Offset(
              5.0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          ):BoxShadow()
        ],
            ),
                  child: Text(
                    "Roll",
                    style: TextStyle(color: added?Colors.red:Colors.white.withOpacity(0.5),fontSize: 35),
                    textAlign: TextAlign.center,
                    
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
