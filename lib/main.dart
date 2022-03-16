import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import './my_chart.dart';
import './my_slider.dart';
import './sizer_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    return ChangeNotifierProvider(                       // <-------- Provider
      create: (context) => MySizer(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Time spent'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: MyChart(),                        // <------- chart
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: MySlider(),                        // <-------- slider
            ),
          ],
        ),
      ),
    );
  }
}
