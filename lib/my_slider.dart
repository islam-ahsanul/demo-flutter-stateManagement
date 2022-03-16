import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './sizer_provider.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {


  @override
  Widget build(BuildContext context) {
    final myTextSize = Provider.of<MySizer>(context);
    return Slider(
      value: myTextSize.theSize,
      onChanged: (value) => myTextSize.theSize = value,
    );
  }
}

