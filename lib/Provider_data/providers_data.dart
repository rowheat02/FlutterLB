import 'dart:async';
import 'dart:developer';
import 'dart:math';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Functions/Allfunc.dart';
import '../Functions/func1122.dart';
import '../Functions/func1311.dart';
import '../Functions/func222.dart';
import '../Functions/func123.dart';
import '../Functions/func114.dart';
import '../Functions/func42.dart';
import '../Functions/func33.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Providersdata with ChangeNotifier {
  var betdata = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0};
  var resultdata = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0};
  var wonlost = 0;
  var slidervalue = 15.0;
  // var sliderint=slidervalue.round();
  var animatedswitcherkey = 0;
  var active = null;
  int add_subtract = 1;
  int btctrl_result = 0;
  int Rand17 = 1;
  int Balance;
  int Randompatternval;
  var randlist = [];
  var n5 = 0;
  var n6 = 0;
  var n7 = 0;
  var won = 0;
  var nonzero_bet = [];
  AudioPlayer played;
  // var minbet=true;
  static AudioCache player = AudioCache();
  load() {
    player.load('Dice1.mp3');
  }

  play() async {
    played = await player.play('Dice1.mp3');
  }

  stop() async {
    played.stop();
    print("stop");
  }

  changeanimatedswitcherkey(a) {
    animatedswitcherkey = a;
    notifyListeners();
  }

  setslidervalue(val) {
    slidervalue = val;
    notifyListeners();
  }

  setwonlost() {
    var result = [];
    var bet = 0;
    int rcount;

    for (int i = 1; i <= 6; i++) {
      print(betdata[i]);
      if (betdata[i] > 0) {
        print("val" + i.toString());
        nonzero_bet.add(i);
        bet = bet + betdata[i];
      }
   
      result.add(resultdata[i]);
    print("aloo"+result.toString());

    }

    for (var e in nonzero_bet) {
      rcount = result.where((c) => c == e).toList().length;
      print("ccoo" + rcount.toString());
      if (rcount > 1) {
        wonlost = wonlost + betdata[e] * rcount;
        won = 1;
      }
      else{
        wonlost=wonlost-betdata[e];
      }
           
    }
    if(wonlost<0){
      wonlost=-wonlost;
      won=0;
    }
    else if(wonlost>0){
    setBalancee1(wonlost);

    }
    else if(wonlost==0){
      won=2;
      
    }


    
    // if (wonlost == 0&&won!=true) {
    //   wonlost = bet;
    // }
    // else if(wonlost==0){
    //   won =false;
    // }
   

  }
  setwonlost1(){
     

  }

  setBalance(int val) {
    Balance = val;
    notifyListeners();
  }

  randomize6() {
    var rand = new Random();
    var Rand = 1 + rand.nextInt(7);
    if (Rand == 5)
      Rand17 = 1;
    else
      Rand17 = Rand;
  }

  randomize7() {
    var rand = new Random();
    var Rand = 1 + rand.nextInt(7);
    if (Rand == 7)
      Rand17 = 4;
    else
      Rand17 = Rand;
  }

  randomvalselection(rn17) {
    if (rn17 == 5) {
      // print(n6 % 2 == 0);
      if (n5 % 4 == 0) {
        Rand17 = 5;
      } else {
        Rand17 = 1;
      }
      n5++;
      // print("5 aayo hai");
    } else if (rn17 == 7) {
      print(n7 % 4 == 0);
      if (n7 % 4 == 0) {
        Rand17 = 7;
        // n7++;
      } else {
        Rand17 = 1;
      }

      n7++;
    } else if (rn17 == 6) {
      if (n6 % 4 == 0) {
        Rand17 = 7;
        // n7++;
      } else {
        Rand17 = 3;
      }
      n6++;
    }
  }

  btctrlresult() {
    if (btctrl_result == 0) {
      play();
      print("0aayo");

      var rand = new Random();
      Rand17 = 1 + rand.nextInt(7);
      randomvalselection(Rand17);

      if (Rand17 == 1) {
        settingResult1(resultdata);
        randlist.add(Rand17);
      } else if (Rand17 == 2) {
        settingResult2(resultdata);
        randlist.add(Rand17);
      } else if (Rand17 == 3) {
        settingResult3(resultdata);
        randlist.add(Rand17);
      } else if (Rand17 == 4) {
        settingResult4(resultdata);
        randlist.add(Rand17);
      } else if (Rand17 == 5) {
        settingResult5(resultdata);
        randlist.add(Rand17);
      } else if (Rand17 == 6) {
        settingResult6(resultdata);
        randlist.add(Rand17);
        // n6++;
      } else if (Rand17 == 7) {
        settingResult7(resultdata);
        randlist.add(Rand17);
        // n7++;
      }
      setwonlost();
    }
    if (btctrl_result == 1) {
      print('1aayo');
      wonlost = 0;
      won = 0;
      nonzero_bet = [];
      // minbet=false;

    }
    print("rnd" + Rand17.toString());

    Timer(
        Duration(milliseconds: btctrl_result == 0 ? 0 : 0),
        () => {
              btctrl_result == 0
                  ? {
                      active = null,
                      btctrl_result = 2,
                    }
                  : {
                      betdata[1] = 0,
                      betdata[2] = 0,
                      betdata[3] = 0,
                      betdata[4] = 0,
                      betdata[5] = 0,
                      betdata[6] = 0,
                      btctrl_result = 0,
                      print("sakyo")
                    },
              notifyListeners()
            });
  }

  getbetvalue(id) {
    return betdata[id];
  }

  addsub(val, context) async {
    if (active != null) {
      betdata[active] = val == 0
          ? betdata[active] + slidervalue.round()
          : betdata[active] - slidervalue.round();
      await val == 0
          ? setBalancee2(slidervalue.round())
          : setBalancee1(slidervalue.round());
      //  int Bls = await (prefs.getInt('Balance'))-val;
      // await prefs.setInt('Balance', Bls);
      // print("aaaaaadcccsc"+Bls.toString());
      // notifyListeners();
    } else {
      Flushbar(
        flushbarPosition: FlushbarPosition.TOP,
        // title:  "No symbols Selected",
        forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
        messageText: new Text("No symbols Selected",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
        duration: Duration(milliseconds: 1000),
        // overlayColor:Colors.red,
        borderColor:Colors.white,
        // borderRadius: 50,
        // backgroundColor:Colors.black,
        flushbarStyle: FlushbarStyle.GROUNDED,
        boxShadows:[BoxShadow(color:Colors.white )]
        
      )..show(context);
     

      // Scaffold.of(context).showSnackBar(SnackBar(
      //   content: Text(
      //     "No symbols Selected",
      //     textAlign: TextAlign.center,
      //   ),
      //   duration: Duration(milliseconds: 800),

      // ));
    }
    notifyListeners();
    //  debugger();
  }

  increaseval(val, context) async {
    if (active != null) {
      betdata[active] = betdata[active] + val;
      await setBalancee2(val);
      //  int Bls = await (prefs.getInt('Balance'))-val;
      // await prefs.setInt('Balance', Bls);
      // print("aaaaaadcccsc"+Bls.toString());
      // notifyListeners();
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text(
          "No symbols Selected",
          textAlign: TextAlign.center,
        ),
        duration: Duration(milliseconds: 800),
      ));
    }
  }

  decreaseval(val, context) {
    if (active != null) {
      betdata[active] = betdata[active] - val;
      setBalancee1(val);
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text(
          "No symbols Selected",
          textAlign: TextAlign.center,
        ),
        duration: Duration(milliseconds: 800),
      ));
    }
  }

  setBalanceeinitial() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int Balancee = (prefs.getInt('Balance') ?? 1000);
    await prefs.setInt('Balance', Balancee);
    Balance = Balancee;
    notifyListeners();
  }

  setBalancee1(val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int Balancee = (prefs.getInt('Balance')) + val;
    await prefs.setInt('Balance', Balancee);
    debugPrint("a" + Balancee.toString());
    Balance = Balancee;
    print("B:" + Balance.toString() + "b:" + Balancee.toString());
    notifyListeners();
  }

  setBalancee2(val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int Balancee = (prefs.getInt('Balance') ?? 1000) - val;
    await prefs.setInt('Balance', Balancee);
    Balance = Balancee;
    print("B:" + Balance.toString() + "b:" + Balancee.toString());
    debugPrint("a" + Balancee.toString());
    notifyListeners();
  }

  //   setBalancee3(val) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   int Balancee = (prefs.getInt('Balance')) + val;
  //   await prefs.setInt('Balance', Balancee);
  //   debugPrint("a" + Balancee.toString());
  //   Balance = Balancee;
  //   print("B:" + Balance.toString() + "b:" + Balancee.toString());
  //   notifyListeners();
  // }
  setbet_rslt(a) {
    btctrl_result = a;
    notifyListeners();
    print('last');
  }

  setactive(activevalue) {
    active = activevalue;
    notifyListeners();
  }
}
