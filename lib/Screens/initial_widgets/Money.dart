import 'package:firebase_admob/firebase_admob.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:langurb/Provider_data/providers_data.dart';
import 'package:provider/provider.dart';

class Money extends StatefulWidget {
  @override
  _MoneyState createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
  rewardMoney() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int Balancee = (prefs.getInt('Balance')) + 100;
    await prefs.setInt('Balance', Balancee);
  }

  bool _completed = false;
  var snak;

  RewardedVideoAd rewarded;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    RewardedVideoAd.instance
        .load(
            adUnitId: "ca-app-pub-8724566557762547/8488669777",
            targetingInfo: MobileAdTargetingInfo(
                // testDevices:["869906033918754"] ,
                ))
        .catchError((e) => print("error in loading again"));
    RewardedVideoAd.instance.listener = (RewardedVideoAdEvent event,
        {String rewardType, int rewardAmount}) async {
      if (event == RewardedVideoAdEvent.rewarded) {
        // Here, apps should update state to reflect the reward.
        print("ADaklndlaknsdlkansdklasndklasRewarded   Rewarded");
        rewardMoney();
      }
      if (event == RewardedVideoAdEvent.completed) {
        _completed = true;
      }
      ;
      if (event == RewardedVideoAdEvent.closed) {
        RewardedVideoAd.instance
            .load(
                adUnitId: RewardedVideoAd.testAdUnitId,
                targetingInfo: MobileAdTargetingInfo(
                    // testDevices:["869906033918754"] ,
                    ))
            .catchError((e) => print("error in loading again"));
        snak = await Flushbar(
            flushbarPosition: FlushbarPosition.TOP,
            isDismissible: true,
            // title:  "No symbols Selected",
            forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
            messageText: new Text(
              "RS 100 Rewarded",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            duration: Duration(milliseconds: 2000),
            // overlayColor:Colors.red,
            borderColor: Colors.white,
            // borderRadius: 50,
            // backgroundColor:Colors.black,
            flushbarStyle: FlushbarStyle.GROUNDED,
            boxShadows: [BoxShadow(color: Colors.white)]);
        if (_completed) snak.show(context);
        _completed = false;
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    var provdat = Provider.of<Providersdata>(context);
    var balance = provdat.Balance;
    return Container(
        decoration: BoxDecoration(color: Colors.transparent),
        height: MediaQuery.of(context).size.height * 0.90,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Text("This is Money Widget",style: TextStyle(fontSize: 30,color: Colors.white)),

            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(top: 5),
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(
                width: 0,
                color: Colors.white,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Balance: ",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 20),
                  ),
                  Text(
                    "RS $balance",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Get Rs 100",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                InkWell(
                  onTap: () async {
                    // RewardedVideoAd.instance.show().catchError(
                    //     (e) => print("error in showing ad: ${e.toString()}"));
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white)),
                    child: Center(
                        child: Text(
                      "Click",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
