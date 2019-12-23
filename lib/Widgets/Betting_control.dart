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
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 5),
                  child: Row(
                    children: <Widget>[
                      Text("Balance: ",
                          style: TextStyle(color: Colors.red[300])),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        transitionBuilder:(Widget child, Animation<double> animation) {
                          return ScaleTransition(
                              child: child, scale: animation);
                        },
                        
                        child: Text("RS $balance",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),key: ValueKey<int>(balance),),
                        
                      )
                    ],
                  ),
                )
              ],
            ),
            
            provar.active != null
                ? Card(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.width * 0.08,
                      child: Container(
                        margin: EdgeInsets.all(4),
                        width: 90,
                        height: 90,
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
                    :AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        transitionBuilder:(Widget child, Animation<double> animation) {
                          return ScaleTransition(
                              child: child, scale: animation);
                        },
                        
                  
                          child: Text("RS $activebals",
                          key: ValueKey<int>(activebals),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                // fontFamily: 'jos',
                                color: Colors.white
                              )),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: FlatButton(
                      child: Icon(Icons.remove, color: Colors.red),
                      onPressed: () => {
                        provar.addsub(1, context),

                   
                }
                     
                      ,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: FlatButton(
                      child: Icon(Icons.add, color: Colors.white),
                      onPressed: () => provar.addsub(0, context),
                    ),
                    // FlatButton(child: Icon(Icons.remove_circle,color: Colors.orange),onPressed: ()=>{}),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Container(margin: EdgeInsets.all(10),),
                InkWell(
                  onTap: () => {print("hello"), provar.btctrlresult()},
                  child: Container(
                    margin: EdgeInsets.only(bottom: 6),
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                        // color: Colors.tealAccent.withOpacity(0.3)
                        ),
                    // padding: EdgeInsets.all(15),
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(
                        "Roll",
                        style: TextStyle(color: Colors.white),
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
