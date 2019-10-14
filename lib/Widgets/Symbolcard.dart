import 'package:flutter/material.dart';
import 'package:langurb/Provider_data/providers_data.dart';

import 'package:provider/provider.dart';

class Symbolcard extends StatelessWidget {
  final int id;
  Symbolcard(this.id);
  @override
  Widget build(BuildContext context) {
    var Provid = Provider.of<Providersdata>(context);
    var valuetoshow = Provid.getbetvalue(id);
    var b = Provid.Balance;
    Provid.setBalanceeinitial();

    return
        // Text("From Symbolcard $id");
        InkWell(
      onTap: () => Provid.setactive(id),
      child: Container(
          decoration: BoxDecoration(
              // border: new Border.all(color:id==Provid.active? Colors.green:Colors.white70, width: 1),
              // borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
          margin: new EdgeInsets.only(right: 0, bottom: 0,left: 6,top: 0),
          // width: MediaQuery.of(context).size.width * 0.2,
          // height: MediaQuery.of(context).size.height * 0.4,
           width: MediaQuery.of(context).size.width * 0.18,
          height: MediaQuery.of(context).size.height * 0.34,
          
          // width:  Provid.active == id
          //                         ? MediaQuery.of(context).size.width * 0.20
          //                         : MediaQuery.of(context).size.width * 0.18,
          // height: Provid.active == id
          //                         ? MediaQuery.of(context).size.height * 0.36
          //                         : MediaQuery.of(context).size.height * 0.34,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              new ClipRRect(
                borderRadius: new BorderRadius.all(Radius.circular(12)),
                
                child: Image.asset(
                  Provid.active == id?"Jpg/$id-.jpg":"Jpg/$id.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(bottom: 2),
                      // decoration: BoxDecoration(
                      //     color: Provid.active == id
                      //         ? Colors.black.withOpacity(0.6)
                      //         : Colors.white.withOpacity(1),
                      //     borderRadius: BorderRadius.circular(12)),
                      child: FittedBox(
                        child: Text("Betting: RS $valuetoshow",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Provid.active == id
                                  ? Colors.green
                                  : Colors.red,
                            )),
                      ))
                ],
              ),
            ],
          )),
    );
  }
}
