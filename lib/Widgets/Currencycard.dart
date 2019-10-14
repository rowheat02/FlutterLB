import 'package:flutter/material.dart';
import 'package:langurb/Provider_data/providers_data.dart';
import 'package:provider/provider.dart';

class Currencycard extends StatelessWidget {
  final id;
  const Currencycard({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provar= Provider.of<Providersdata>(context);
    return Row(
      children: <Widget>[
        Card(
          elevation: 6.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: InkWell(
            onTap: provar.add_subtract==1? ()=>provar.increaseval(id,context):()=>provar.decreaseval(id,context),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.05,
              child: Text(
                '$id',
                style: TextStyle(fontSize: 24,color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
