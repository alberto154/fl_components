import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 35;
  bool _sliderEnabled = true;
  bool _switchEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders y Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            value: _sliderValue,
            min: 0,
            max: 100,
            onChanged: (_sliderEnabled && _switchEnabled) ? (value) {
              _sliderValue = value;
              setState((){});
            } : null,
          ),
          Row(
            children: [
              Checkbox(
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value ?? true;
                  setState((){});
                },
              ),
            Text('Soy mayor de edad'),
            ],
          ),
          Row(
            children: [
              Switch.adaptive(
                value: _switchEnabled,
                onChanged: (value) {
                  _switchEnabled = value;
                  setState((){});
                },
              ),
            Text('Cookies'),
            ],
          ),
        ],
      ),
    );
  }
}