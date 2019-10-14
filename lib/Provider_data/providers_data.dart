import 'dart:async';
import 'dart:math';
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

class Providersdata with ChangeNotifier {
  var betdata = {1: 10, 2: 0, 3: 5, 4: 0, 5: 50, 6: 0};
  var resultdata = {1: 1, 2: 2, 3: 3, 4: 4, 5: 5, 6: 1};

  var active = null;
  int add_subtract = 1;
  int btctrl_result = 0;
  int Rand17 = 1;
  int Balance;
  int Randompatternval;
  var randlist = [];
  var n6 = 0;
  var n7 = 0;

  setBalance(int val) {
    Balance = val;
    notifyListeners();
  }

  randomize6() {
    var rand = new Random();
    var Rand = 1 + rand.nextInt(7);
    if (Rand == 5)
      randomize6();
    else
      Rand17 = Rand;
  }

  randomize7() {
    var rand = new Random();
    var Rand = 1 + rand.nextInt(7);
    if (Rand == 7)
      randomize7();
    else
      Rand17 = Rand;
  }

  randomvalselection(rn17) {
    if (rn17 == 5) {
      // print(n6 % 2 == 0);
      if (n6 % 4 == 0) {
        Rand17 = 5;
      } else {
        randomize6();
      }
      n6++;
      // print("5 aayo hai");
    } else if (rn17 == 7) {
       print(n7 % 4 == 0);
      if (n7 % 4 == 0) {
        Rand17 = 7;
        // n7++;
      } else {
        randomize7();
      }
      n7++;
      print("7 aayo hai");

    }
  }

  btctrlresult() {
    if (btctrl_result == 0) {
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
      print("lk" + randlist.toString());

    }

    Timer(
        Duration(milliseconds: 100),
        () => {
              btctrl_result == 0
                  ? {
                      active = null,
                      btctrl_result = 1,
                    }
                  : {
                      betdata[1] = 0,
                      betdata[2] = 0,
                      betdata[3] = 0,
                      betdata[4] = 0,
                      betdata[5] = 0,
                      betdata[6] = 0,
                      btctrl_result = 0
                    },
              notifyListeners()
            });
  }

  getbetvalue(id) {
    return betdata[id];
  }

  addsub(int val) {
    add_subtract = val;
    notifyListeners();
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

  setactive(activevalue) {
    active = activevalue;
    notifyListeners();
  }
}
