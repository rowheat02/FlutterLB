import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:langurb/Screens/Home_screen/MyBlinkingButton.dart';
import 'package:langurb/Screens/Home_screen/Wonorloss.dart';

class Resultleft extends StatefulWidget {
  @override
  _ResultleftState createState() => _ResultleftState();
}

class _ResultleftState extends State<Resultleft>   {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 0, top: 0, left: 0, right: 0),
      // color: Colors.grey,
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.white, width: 0.5),
          // border: Border(right: BorderSide(color: Colors.white, width: 0.5)),
          // borderRadius: new BorderRadius.only(bottomRight: Radius.circular(15),topLeft: Radius.circular(15)),
          // color: Colors.transparent.withOpacity(0.2)
          ),

      width: MediaQuery.of(context).size.width * 0.60,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
      width: MediaQuery.of(context).size.width * 0.60,


            child: Container(
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(color: Colors.amber[300].withOpacity(1),border: Border.all(color: Colors.white,width: 1),borderRadius: BorderRadius.all(Radius.circular(15))),
              
              child: DataTable(
                
                dataRowHeight:20 ,
                headingRowHeight: 20,
                
                columns: [DataColumn( label: Text("",style: TextStyle(color: Colors.white),)),DataColumn(label: Text("Bet",style: TextStyle(color: Colors.red))),DataColumn(label: Text("Won",style: TextStyle(color: Colors.red)))],
                rows: [DataRow( selected: false, cells: [DataCell( Container(
                      padding: EdgeInsets.all(1),
                      // color: Colors.white,
                      // decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 0.5)),
                      width: 30,
                      height: 20,
                      child: SvgPicture.asset(
                        'Jpg/2.svg',
                        fit: BoxFit.contain,
                      ),
                    ),),
                DataCell(Text("Symbol")),DataCell(Text("Symbol"))]),
                DataRow( selected: false, cells: [DataCell( Container(
                      padding: EdgeInsets.all(1),
                      // color: Colors.white,
                      width: 30,
                      height: 20,
                      child: SvgPicture.asset(
                        'Jpg/1.svg',
                        fit: BoxFit.contain,
                      ),
                    ),),
                DataCell(Text("Symbol")),DataCell(Text("Symbol"))]),
                DataRow( selected: false, cells: [DataCell( Container(
                      padding: EdgeInsets.all(1),
                      color: Colors.white,
                      width: 30,
                      height: 20,
                      child: SvgPicture.asset(
                        'Jpg/3.svg',
                        fit: BoxFit.contain,
                      ),
                    ),),
                DataCell(Text("Symbol")),DataCell(Text("Symbol"))]),
                DataRow( selected: false, cells: [DataCell( Container(
                      padding: EdgeInsets.all(1),
                      color: Colors.white,
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset(
                        'Jpg/1.svg',
                        fit: BoxFit.contain,
                      ),
                    ),),
                DataCell(Text("Symbol")),DataCell(Text("Symbol"))]),
                DataRow( selected: false, cells: [DataCell( Container(
                      padding: EdgeInsets.all(1),
                      color: Colors.white,
                      width: 20,
                      height: 20,
                      child: SvgPicture.asset(
                        'Jpg/1.svg',
                        fit: BoxFit.contain,
                      ),
                    ),),
                DataCell(Text("Symbol")),DataCell(Text("Symbol"))]),
                
                DataRow(selected: false, cells: [DataCell(Text("Symbol")),DataCell(Text("Symbol")),DataCell(Text("Symbol"))]),DataRow(selected: true, cells: [DataCell(Text("")),DataCell(Text("Rs 20")),DataCell(Text("Rs 100"))
                
                ]),
                
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              MyBlinkingButton(),
              SizedBox(width: 4,),
              Wonorloss(),
            ],
          ),
         
          SizedBox(height: 1,)

        ],
      ),
    );
  }
}
