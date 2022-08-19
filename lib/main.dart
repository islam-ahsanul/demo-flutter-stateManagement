import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_text.dart';
import './my_slider.dart';
import './sizer_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MySizer(), // <-------- Provider
      child: Scaffold(
        appBar: AppBar(
          title: Text('State Management with Provider'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: MyText(), // <------- Text
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: MySlider(), // <-------- Slider
            ),
          ],
        ),
      ),
    );
  }
}
