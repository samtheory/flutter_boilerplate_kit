import 'package:Flutter_boilerplate_kit/Router/sailor__Router.dart';
import 'package:flutter/material.dart';
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('First'),),
      body: Container(
        child: Center(
          child: FlatButton(
              onPressed: () {
                Routes.sailor.navigate(Routes.routeList.secPage ,args: SecondPageArgument(title: 'This is my stupid arg title'));
              },
              child: Text('First Page')),
        ),
      ),
    );
  }
}