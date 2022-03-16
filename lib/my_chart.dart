import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './sizer_provider.dart';

class MyChart extends StatelessWidget {

  Widget centredText(double value) {
    return Center(
      child: Text(
        'This is not an Pie Chart',
        style: TextStyle(
          fontSize: value,
        ),
      ),
    );
  }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<MySizer>(                                  <---- USING Consumer
//       builder:(context, myTextSize, _) => Container(
//         child: centredText(myTextSize.theSize*20),
//       ),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    final myTextSize = Provider.of<MySizer>(context);
    return Container(
      child: centredText(myTextSize.theSize * 20),
    );
  }
}
