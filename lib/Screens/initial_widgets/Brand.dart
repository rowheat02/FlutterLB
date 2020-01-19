import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Brand extends StatefulWidget {
  @override
  _BrandState createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    // var provdat = Provider.of<Providersdata>(context);
    // var balance = provdat.Balance;
    var sym0 = [1, 2, 3];
    var sym1 = [4, 5, 6];
    return Container(
        decoration: BoxDecoration(color: Colors.transparent),
        height: MediaQuery.of(context).size.height * 0.90,
        // width: 400,
        child: Center(
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Text("This is Money Widget",style: TextStyle(fontSize: 30,color: Colors.white)),

                  Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.only(top: 5),
                    width: 400,
                    decoration: BoxDecoration(
                        //     border: Border.all(
                        //   width: 0,
                        //   color: Colors.white,
                        // )
                        ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "LangurBurja",
                          style: TextStyle(color: Colors.white, fontSize: 45),
                          textAlign: TextAlign.end,
                        ),
                        Text(
                          " Try your Luck ",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.3),
                      // color: Colors.white.withOpacity(0.9)
                    ),
                    padding: EdgeInsets.all(2),
                    // width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: sym0
                              .map<Widget>((word) => Row(
                                    children: <Widget>[
                                      Container(
                                        height: 30,
                                        width: 30,
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: Colors.yellowAccent
                                              .withOpacity(1),
                                          border: Border.all(
                                            width: 0.3,
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: SvgPicture.asset(
                                          'Jpg/$word.svg',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 10,
                                      // )
                                    ],
                                  ))
                              .toList(),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: sym1
                              .map<Widget>((word) => Row(
                                    children: <Widget>[
                                      Container(
                                        height: 30,
                                        width: 30,
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                          color: Colors.yellowAccent
                                              .withOpacity(1),
                                          border: Border.all(
                                            width: 0.3,
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: SvgPicture.asset(
                                          'Jpg/$word.svg',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 10,
                                      // )
                                    ],
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 50,),

                  // GridView(
                  // children: <Widget>[
                  //   //  Container(
                  //   //   height: 100,
                  //   //   padding: EdgeInsets.all(10),
                  //   //   decoration: BoxDecoration(
                  //   //     color: Colors.red.withOpacity(0.5),
                  //   //     border: Border.all(
                  //   //       width: 0,
                  //   //       color: Colors.white,
                  //   //     ),
                  //   //   ),
                  //   //   child: Image.asset("Jpg/Brand.png")),

                  // ],
                  // )
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Share.text(
                                'Langur Burja',
                                'https://play.google.com/store/apps/details?id=com.khorkhore.lb&hl=en',
                                'text/plain');
                          },
                          child: Container(
                            width: 80,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.share,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Share",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          highlightColor: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: RaisedButton(
                            onPressed: () async{
                             const url =
                                        'https://play.google.com/store/apps/details?id=com.khorkhore.lb&hl=en';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                            },
                            child: Container(
                              width: 80,
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "Rate Us",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            highlightColor: Colors.grey,
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
