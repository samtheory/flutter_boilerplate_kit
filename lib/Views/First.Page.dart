import 'package:Flutter_boilerplate_kit/Router/sailor__Router.dart';
import 'package:Flutter_boilerplate_kit/Stores/SampleMobx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SampleStore store = Provider.of<SampleStore>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("My Counter:"),
                  Observer(builder: (_) {
                    return Text(store.counter.toString());
                  })
                ],
              ),
              FlatButton(
                  onPressed: () {
                    Routes.sailor.navigate(Routes.routeList.secPage,
                        args: SecondPageArgument(
                            title: 'This is my stupid arg title'));
                  },
                  child: Text('First Page')),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => store.addUp(),
      ),
    );
  }
}
