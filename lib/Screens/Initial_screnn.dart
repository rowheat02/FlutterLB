
import 'package:flutter/material.dart';
// import 'package:langurb/Screens/Home_screen.dart';
// import 'package:langurb/Screens/test.dart';
import 'package:flutter_particles/particles.dart';
import './initial_widgets/animated_widget.dart';
import 'package:provider/provider.dart';
import '../Provider_data/providers_data.dart';

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
final provdat = Provider.of<Providersdata>(context, listen: true);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.4),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue[900], Colors.lightBlue[900]])),
        // color: Colors.red,
        child: Stack(
          children: <Widget>[
            new Particles(
              15, // Number of Particles
              Colors.redAccent, // Color of Particles
            ),
      
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              // color: Colors.o,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height,
                    // child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: <Widget>[
                    //     Icon(
                    //       Icons.label_important,
                    //       size: 50,
                    //       color: Colors.white.withOpacity(0.05),
                    //     ),
                    //     Text(
                    //       "KhorKhore",
                    //       style: TextStyle(color: Colors.white, fontSize: 30),
                    //     ),
                    //     Icon(
                    //       Icons.label_important,
                    //       size: 50,
                    //       color: Colors.white.withOpacity(0.05),
                    //     ),
                    //   ],
                    // ),
                    child: animatedWidget(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, '/play'),
                        child: Container(
                          width: 150,
                          height: 50,
                          padding: EdgeInsets.only(left: 10, right: 18),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(4.0, 4.0),
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 2.0,
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                "Play",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => provdat.changeanimatedswitcherkey(1),
                        child: Container(
                          width: provdat.animatedswitcherkey==1?200: 150,
                          height: 50,
                          padding: EdgeInsets.only(left: 2, right: 2),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(4.0, 4.0),
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 2.0,
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.attach_money,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                "Money",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () =>  provdat.changeanimatedswitcherkey(2),
                        child: Container(
                          width: provdat.animatedswitcherkey==2?200: 150,
                          height: 50,
                          padding: EdgeInsets.only(left: 10, right: 8),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(4.0, 4.0),
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 2.0,
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                "About",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, '/play'),
                        child: Container(
                          width: 150,
                          height: 50,
                          padding: EdgeInsets.only(left: 10, right: 8),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(4.0, 4.0),
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 2.0,
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                "Instruction",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
