import 'package:flutter/material.dart';
import 'package:langurb/Provider_data/providers_data.dart';
import 'package:langurb/Widgets/Currencycard.dart';
import 'package:provider/provider.dart';

class Betcontrol_right extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var provar = Provider.of<Providersdata>(context);
    var activebals = provar.betdata[provar.active];
    var active=provar.active;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
       provar.active != null
            ? Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: MediaQuery.of(context).size.width * 0.08,
                  child: Image.asset("Jpg/$active.jpg"),
                ),
              )
            : Container(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            provar.active == null
                ? Text(
                    "No Symbol Selected",
                    style: TextStyle(color: Colors.white),
                  )
                : Text(
                    "Betting: $activebals",
                    style: TextStyle(color: Colors.white),
                  )
          ],
        ),
        Container(
          // margin: EdgeInsets.only(top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
             
              Container(
                decoration: BoxDecoration(
                    color: provar.add_subtract == 0 ? Colors.red : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: FlatButton(
                  child: Icon(
                    Icons.remove,
                    color: provar.add_subtract == 0 ? Colors.white : Colors.red,
                  ),
                  onPressed: () => provar.addsub(0,context),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: provar.add_subtract == 1 ? Colors.red : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: FlatButton(
                  child: Icon(Icons.add,
                      color:
                          provar.add_subtract == 1 ? Colors.white : Colors.red),
                  onPressed: () => provar.addsub(1,context),
                ),
                // FlatButton(child: Icon(Icons.remove_circle,color: Colors.orange),onPressed: ()=>{}),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Currencycard(id: 1),
            new Currencycard(id: 5),
            new Currencycard(id: 10),
            new Currencycard(id: 50),
            // new Currencycard(id: 100),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Container(margin: EdgeInsets.all(10),),
            InkWell(
              onTap: () => provar.btctrlresult(),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(color: Colors.tealAccent),
                // padding: EdgeInsets.all(15),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    "Roll",
                    style: TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      


    ],);
    
        
  }
}