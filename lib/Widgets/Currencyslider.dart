import 'package:flutter/material.dart';
import 'package:flutter_fluid_slider/flutter_fluid_slider.dart';
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

    int val = provar.slidervalue.round();

    return Expanded(child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
              Text("RS $val",style: TextStyle(color: Colors.white),),

            
          Container(                  
                  width: 120,
                  // height: 30,
                  child:SliderTheme(
                    data: SliderTheme.of(context).copyWith(

                        trackShape: CustomTrackShape()

                    ),
                    child: Slider(
                      value: provar.slidervalue,
                      min: 0.0,
                      max: 100.0,
                      inactiveColor: Colors.yellow,
                      activeColor: Colors.red,
                      divisions: 20,

                      label: "$val",
                      onChanged: (values) {
                        print(values.round());
                        provar.setslidervalue(values);

                      },
                    ),
                  ),
                  
              //     child: 
              // child:FluidSlider(
              //       value: provar.slidervalue,
              //       onChanged: (double newValue) =>
              //           {provar.setslidervalue(newValue)},
              //       min: 0.0,
              //       max: 100.0,
              //       sliderColor: Colors.redAccent,
              //       thumbColor: Colors.amber,
              //       labelsTextStyle:TextStyle(color: Colors.yellow,),
              //       valueTextStyle:TextStyle(color: Colors.black,),
                    
                    
              ),

       
     
            ]));
  
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
    final double trackHeight = 5;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
