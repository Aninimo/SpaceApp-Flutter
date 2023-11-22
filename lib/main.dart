import 'package:flutter/material.dart';

import 'package:space/screens/explore_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExploreScreen()
    );
  }
}
