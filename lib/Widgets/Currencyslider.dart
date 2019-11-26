import 'package:flutter/material.dart';
import 'package:langurb/Provider_data/providers_data.dart';
import 'package:provider/provider.dart';

class CurrencySlider extends StatefulWidget {
  @override
  _CurrencySliderState createState() => _CurrencySliderState();
}

class _CurrencySliderState extends State<CurrencySlider> {
  double _value = 1.0;
 
  @override
  Widget build(BuildContext context) {
  var provar = Provider.of<Providersdata>(context);

    int val =provar.slidervalue.round();

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('Rs 0',style: TextStyle(color: Colors.yellowAccent),),
          Container(
              width: 100,
              height: 25,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  
                    trackShape: CustomTrackShape()
                
                ),
                child: Slider(
                  value: provar.slidervalue,
                  min: 0.0,
                  max: 100.0,
                  inactiveColor: Colors.transparent,
                  activeColor: Colors.red,
                  divisions: 100,

                  label: "$val",
                  onChanged: (values) {
                    print(values.round());
                    provar.setslidervalue(values);
                    
                  },
                ),
              )),
          Text('Rs 100',style: TextStyle(color: Colors.yellowAccent),),

        ],
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    @required RenderBox parentBox,
    Offset offset = Offset.zero,
    @required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
