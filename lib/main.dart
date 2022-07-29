import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/startup_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
        primarySwatch: Colors.blue,
      ),
      home: StartUp(),
    );
  }
}
