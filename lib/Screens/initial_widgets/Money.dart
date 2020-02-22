// import 'package:firebase_admob/firebase_admob.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_spin_fade_loader_indicator.dart';
import 'package:loading/loading.dart';

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

  showalertdialogue() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: _completed?Colors.green:Colors.red, elevation: 10.0,
          // title: new Text("Alert Dialog title"),
          content: Container(
              // color:,
              child: new Text(
            !_completed
                ? "Do you want to watch Ad and get Rs 100"
                : "You have been awarded with RS 100",
            style: TextStyle(color: Colors.white),
          )),
          actions: <Widget>[
            !rewarded && !_completed
                ? InkWell(
                    onTap: () => {
                      setState(() {
                        rewarded = true;
                      }),
                      Navigator.of(context).pop(),
                      showalertdialogue(),
                      loadrewardedAd1(),
                    },
                    child: Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(5),
                      // margin: EdgeInsets.only(right: 30),

                      child: Text("Yes",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                  )
                : rewarded && !_completed
                    ? Container(
                        height: 20,
                        width: 20,
                        color: Colors.transparent,
                        child: Center(
                          child: Loading(
                              indicator: BallSpinFadeLoaderIndicator(),
                              size: 50.0,
                              color: Colors.white),
                        ),
                      )
                    : Container(),
            // usually buttons at the bottom of the dialog
           !rewarded?Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: _completed? Colors.white:Colors.grey, width: 1)),
              child:  InkWell(
                child: new Text(
                  "No",
                  style: TextStyle(
                    color: _completed? Colors.white:Colors.grey,
                  ),
                ),
                onTap: () {
                  setState(() {
                    rewarded = false;
                    _completed = false;
                    // _closed = true;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ):Container(),
            rewarded&&_completed?Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: _completed? Colors.white:Colors.grey, width: 1)),
              child:  InkWell(
                child: new Text(
                  "Close",
                  style: TextStyle(
                    color: _completed? Colors.white:Colors.grey,
                  ),
                ),
                onTap: () {
                  setState(() {
                    rewarded = false;
                    _completed = false;
                    // _closed = true;
                  });
                  Navigator.of(context).pop();
                },
              ),):Container()
          ],
        );
      },
    );
  }

  loadrewardedAd() {
    FacebookRewardedVideoAd.loadRewardedVideoAd(
      placementId: "1042494426115109_1042559516108600",
      listener: (result, value) {
        if (result == RewardedVideoAdResult.LOADED) {
          // FacebookRewardedVideoAd.showRewardedVideoAd();
          setState(() {
            // surveyloaded = true;
          });
        }
        //   FacebookRewardedVideoAd.showRewardedVideoAd();
        if (result == RewardedVideoAdResult.VIDEO_COMPLETE) {
          rewardMoney();
          Flushbar(
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
              boxShadows: [BoxShadow(color: Colors.white)]).show(context);
        }
      },
    );
  }

  loadrewardedAd1() {
    FacebookRewardedVideoAd.loadRewardedVideoAd(
      placementId: "1042494426115109_1042559516108600",
      listener: (result, value) {
        if (result == RewardedVideoAdResult.LOADED) {
          print("object");
          // if (!_closed) {
          //   FacebookRewardedVideoAd.showRewardedVideoAd();
          // }

          FacebookRewardedVideoAd.showRewardedVideoAd();
        }
        //   FacebookRewardedVideoAd.showRewardedVideoAd();
        if (result == RewardedVideoAdResult.VIDEO_COMPLETE) {
          Navigator.of(context).pop();
          showalertdialogue();
          setState(() {
            _completed = true;
          });

          rewardMoney();
        }
        if (result == RewardedVideoAdResult.VIDEO_CLOSED) {
          if (!_completed) Navigator.of(context).pop();
          setState(() {
            rewarded = false;
            _completed = false;
          });
        }
        if (result == RewardedVideoAdResult.ERROR) {
          Navigator.of(context).pop();
          setState(() {
            rewarded = false;
            _completed = false;
          });
        }
      },
    );
  }

  bool _completed = false;
  var snak;
  var rewarded = false;
  var _closed = false;

  // RewardedVideoAd rewarded;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // loadrewardedAd();

    //     FirebaseAdMob.instance.initialize(
    //   appId: "ca-app-pub-8724566557762547~9880453125"
    // );
    // RewardedVideoAd.instance
    //     .load(
    //         adUnitId: "ca-app-pub-8724566557762547/8488669777",
    //         targetingInfo: MobileAdTargetingInfo(
    //             // testDevices:["869906033918754"] ,
    //             ))
    //     .catchError((e) => print("error in loading again"));
    // RewardedVideoAd.instance.listener = (RewardedVideoAdEvent event,
    //     {String rewardType, int rewardAmount}) async {
    //   if (event == RewardedVideoAdEvent.rewarded) {
    //     // Here, apps should update state to reflect the reward.
    //     print("ADaklndlaknsdlkansdklasndklasRewarded   Rewarded");
    // rewardMoney();
    //   }
    //   if (event == RewardedVideoAdEvent.completed) {
    //     _completed = true;
    //   }
    //   ;
    //   if (event == RewardedVideoAdEvent.closed) {
    //     RewardedVideoAd.instance
    //         .load(
    //             adUnitId: RewardedVideoAd.testAdUnitId,
    //             targetingInfo: MobileAdTargetingInfo(
    //                 // testDevices:["869906033918754"] ,
    //                 ))
    //         .catchError((e) => print("error in loading again"));
    // snak = await Flushbar(
    //     flushbarPosition: FlushbarPosition.TOP,
    //     isDismissible: true,
    //     // title:  "No symbols Selected",
    //     forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
    //     messageText: new Text(
    //       "RS 100 Rewarded",
    //       textAlign: TextAlign.center,
    //       style: TextStyle(color: Colors.white),
    //     ),
    //     duration: Duration(milliseconds: 2000),
    //     // overlayColor:Colors.red,
    //     borderColor: Colors.white,
    //     // borderRadius: 50,
    //     // backgroundColor:Colors.black,
    //     flushbarStyle: FlushbarStyle.GROUNDED,
    //     boxShadows: [BoxShadow(color: Colors.white)]);
    //     if (_completed) snak.show(context);
    //     _completed = false;
    //   }
    // };
    //  FlutterPollfish.instance.init(apiKey: '69939efa-7962-487c-ba0d-734b6669b074');
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
                  "Get Rs 100 ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    // RewardedVideoAd.instance.show().catchError(
                    //     (e) => print("error in showing ad: ${e.toString()}"));
                    // if (surveyloaded) {
                    //   FacebookRewardedVideoAd.showRewardedVideoAd();
                    // }
                    // else{
                    //   loadrewardedAd();

                    // }

                    // loadrewardedAd1();
                    // setState(() {
                    //   _closed=false;
                    // });
                    showalertdialogue();
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
