import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:langurb/Screens/Home_screen.dart' as prefix0;
import 'package:langurb/Screens/Initial_screnn.dart';
import 'package:langurb/Screens/Licence.dart';
import 'package:langurb/Screens/test.dart';
import './Screens//Home_screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './Provider_data/providers_data.dart';
// import 'package:admob_flutter/admob_flutter.dart';
import 'package:firebase_admob/firebase_admob.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft]);
  SystemChrome.setEnabledSystemUIOverlays([]);
  // Admob.initialize("ca-app-pub-3940256099942544~3347511713");


  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // int Balance = (prefs.getInt('Balance') ?? 1000);
  // await prefs.setInt('Balance', Balance);

  runApp(MyApp());

  Timer.periodic(new Duration(seconds: 4), (timer) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    SystemChrome.setEnabledSystemUIOverlays([]);
  });
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  double getSmartBannerHeight(MediaQueryData mediaQuery) {
  // https://developers.google.com/admob/android/banner#smart_banners
  if (Platform.isAndroid) {
    if (mediaQuery.size.height > 720) return 90.0;
    if (mediaQuery.size.height > 400) return 50.0;
    return 32.0;
  }
  // https://developers.google.com/admob/ios/banner#smart_banners
  // Smart Banners on iPhones have a height of 50 points in portrait and 32 points in landscape.
  // On iPads, height is 90 points in both portrait and landscape.
  if (Platform.isIOS) {
    // TODO use https://pub.dartlang.org/packages/device_info to detect iPhone/iPad?
    // if (iPad) return 90.0;
    if (mediaQuery.orientation == Orientation.portrait) return 50.0;
    return 32.0;
  }
  // No idea, just return a common value.
  return 50.0;
}


  static const MobileAdTargetingInfo targetinginfo=MobileAdTargetingInfo(
    // testDevices:["869906033918754"] ,
    


  );

  BannerAd _bannerAd;
  BannerAd createbannerad(){
    return BannerAd(adUnitId: BannerAd.testAdUnitId,size: AdSize.smartBanner ,targetingInfo: targetinginfo,);
  }
  @override
  void initState() {
    
    super.initState();
    FirebaseAdMob.instance.initialize(
      appId: BannerAd.testAdUnitId
    );
    _bannerAd=createbannerad()..load()..show();

  }
  @override
  void dispose() {
    
    super.dispose();
    _bannerAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Providersdata(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'jos',
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => Initial(),
          '/play': (ctx) => Home_screen(),
          '/test': (ctx) => Test(),
          '/licence': (ctx) => Licence()

        },
        
      ),
    );
  }
}
