import 'package:Flutter_boilerplate_kit/Router/sailor__Router.dart';
import 'package:Flutter_boilerplate_kit/Views/Second.Page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Home'),),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      Routes.sailor.navigate(Routes.routeList.firstPage );
                    },
                    child: Text('HomePage')),
                FlatButton(
                    onPressed: () {
                      Routes.sailor.navigate(Routes.routeList.apiPage );
                    },
                    child: Text('Get Api')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}