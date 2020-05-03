import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  var selected = true;
  var licence = false;
  var webwidth = 310.0;
  var webheight = 220.0;
  // final Completer<WebViewController> _controller =
  //     Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.transparent),
        // height: MediaQuery.of(context).size.height * 0.90,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AnimatedContainer(
              // onEnd: ()=>setState(() {
              //   licence=!licence;
              // }),

              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),

              width: 370,
              height: selected ? 250 : 0,
              color: Colors.transparent,
              alignment: selected
                  ? Alignment.topCenter
                  : AlignmentDirectional.topCenter,
              duration: Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.white)),
                child: SingleChildScrollView(
                  // reverse: true,
                  padding: EdgeInsets.all(5),
                  scrollDirection: Axis.vertical,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Created By:",
                          style: TextStyle(color: Colors.white)),
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              // text: 'Created By: ',
                              style: TextStyle(color: Colors.white),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Rohit Gautam',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.facebook.com/RowHeatGautam';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue[100],
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.instagram.com/row_heat02/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Icon(FontAwesomeIcons.instagram,
                                color: Colors.blue[100], size: 30),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.linkedin.com/in/rohit-gautam-b29a4613b/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Icon(FontAwesomeIcons.linkedin,
                                color: Colors.blue[100], size: 30),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // Text("Developed In:",
                      //     style: TextStyle(color: Colors.white)),
                      // Row(
                      //   children: <Widget>[
                      //     RichText(
                      //       text: TextSpan(
                      //         // text: 'Created By: ',
                      //         style: TextStyle(color: Colors.white),
                      //         children: <TextSpan>[
                      //           TextSpan(
                      //               text: 'FLutter',
                      //               style: TextStyle(
                      //                   fontWeight: FontWeight.bold,
                      //                   fontSize: 15)),
                      //         ],
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Special Thanks:",
                          style: TextStyle(color: Colors.white)),
                      Container(
                        width: 270,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                // text: 'Created By: ',
                                style: TextStyle(color: Colors.white),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Prashant Thapaliya',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.facebook.com/prashant8989';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.blue[100],
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.instagram.com/prashant_o5_24/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(FontAwesomeIcons.instagram,
                                      color: Colors.blue[100], size: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.linkedin.com/in/prashantthapaliya8989/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(FontAwesomeIcons.linkedin,
                                      color: Colors.blue[100], size: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 270,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                // text: 'Created By: ',
                                style: TextStyle(color: Colors.white),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Ashmita Dhakal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.facebook.com/ashmita.dhakal.9';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.blue[100],
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.instagram.com/ashmita__dhakal/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(FontAwesomeIcons.instagram,
                                      color: Colors.blue[100], size: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.linkedin.com/in/ashmita-dhakal/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(FontAwesomeIcons.linkedin,
                                      color: Colors.blue[100], size: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      // Text("Thanks for sharing flutter skills",
                      //     style: TextStyle(color: Colors.white)),
                      Container(
                        width: 270,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                // text: 'Created By: ',
                                style: TextStyle(color: Colors.white),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Samir Dangal',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.facebook.com/samir.dangal.201';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.blue[100],
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.instagram.com/amias_samir/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(FontAwesomeIcons.instagram,
                                      color: Colors.blue[100], size: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.linkedin.com/in/samir-dangal-a17a6b122/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(FontAwesomeIcons.linkedin,
                                      color: Colors.blue[100], size: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 270,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                // text: 'Created By: ',
                                style: TextStyle(color: Colors.white),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Nishon Tandukar',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.facebook.com/nishon.tandukar';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.blue[100],
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.instagram.com/nishon.tan/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(FontAwesomeIcons.instagram,
                                      color: Colors.blue[100], size: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () async {
                                    const url =
                                        'https://www.linkedin.com/in/nishon-tan/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Icon(FontAwesomeIcons.linkedin,
                                      color: Colors.blue[100], size: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Animatedcont(),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                      // onTap: () {
                      //   setState(
                      //     () {
                      //       selected = !selected;
                      //       // licence = !licence;
                      //       if (licence) {
                      //         licence = false;
                      //       } else {
                      //         Timer(
                      //             Duration(seconds: 1),
                      //             () => setState(() {
                      //                   licence = true;
                      //                 }));
                      //       }

                      //       // if (webheight == 10.0 && webwidth == 10.0) {
                      //       //   Timer(Duration(milliseconds: 1000), () {
                      //       //     setState(() {
                      //       //       webwidth = 350.0;
                      //       //     webheight = 220.0;
                      //       //     });

                      //       //   });
                      //       // } else {
                      //       //   setState(() {
                      //       //   webwidth = 10.0;
                      //       //   webheight = 10.0;

                      //       //   });

                      //       // }
                      //     },
                      //   );
                      //   //  Navigator.pushNamed(context, '/licence');
                      // },
                      onTap: () async {
                        setState(() {
                          selected = false;
                        });
                        const url =
                            'https://rowheat02.github.io/khorkhoreprivacypolicy/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                        setState(() {
                          selected = true;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: selected ? Colors.transparent : Colors.red,
                            border: Border.all(width: 1, color: Colors.white)),
                        child: Center(
                          child: Text(
                            "Privacy Policy",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      )),
                  Container(),
                ],
              ),
            ),
          ],
        ));
  }
}
