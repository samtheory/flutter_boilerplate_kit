import 'package:Flutter_boilerplate_kit/Router/sailor__Router.dart';
import 'package:Flutter_boilerplate_kit/Views/Home.Page.dart';
import 'package:flutter/material.dart';


void main() {
  Routes.createRoutes();
  runApp(MyApp());
}

// this is my initial COMMIted So Be carfull of course !== => fklsdj
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'BoilerPlate Kit',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: Routes.sailor.generator(),
      navigatorKey: Routes.sailor.navigatorKey,
      home: HomePage(),
    );
  }
}
