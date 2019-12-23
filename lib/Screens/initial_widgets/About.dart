import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  var selected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.transparent),
        height: MediaQuery.of(context).size.height * 0.90,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AnimatedContainer(
              width: 400,
              height: selected ? 250 : 0,
              color: Colors.transparent,
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Created By:", style: TextStyle(color: Colors.white)),
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
                          child: Icon(FontAwesomeIcons.instagram,
                              color: Colors.blue[100], size: 30),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: Icon(FontAwesomeIcons.linkedin,
                              color: Colors.blue[100], size: 30),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Developed In:",
                        style: TextStyle(color: Colors.white)),
                    Row(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            // text: 'Created By: ',
                            style: TextStyle(color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'FLutter',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                                child: Icon(FontAwesomeIcons.instagram,
                                    color: Colors.blue[100], size: 20),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
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
                                child: Icon(FontAwesomeIcons.instagram,
                                    color: Colors.blue[100], size: 20),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                child: Icon(FontAwesomeIcons.linkedin,
                                    color: Colors.blue[100], size: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
            ),
            // Animatedcont(),
            Container(
              child: Row(
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        // setState(() {
                        //   selected = !selected;
                        // });
                       Navigator.pushNamed(context, '/licence');
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: selected ? Colors.transparent : Colors.red,
                            border: Border.all(width: 1, color: Colors.white)),
                        child: Center(
                          child: Text(
                            "Liscence",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      )),
                  //  WebView(
                  //   initialUrl: 'https://flutter.io',
                  //   javascriptMode: JavascriptMode.unrestricted,
                  // )
                ],
              ),
            ),
          ],
        ));
  }
}
