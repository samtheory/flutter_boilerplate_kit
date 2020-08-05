import 'package:Flutter_boilerplate_kit/Router/sailor__Router.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final SecondPageArgument args;
  SecondPage(this.args);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Second'),),
      body: Container(
        child: Center(
          child: Text(args.title),
        ),
      ),
    );
  }
}