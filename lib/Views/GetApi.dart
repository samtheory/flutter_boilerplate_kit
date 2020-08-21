import 'dart:convert';

import 'package:Flutter_boilerplate_kit/Api/Chopper_api.dart';
import 'package:Flutter_boilerplate_kit/models/List_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GetApiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final response = Provider.of<ApiService>(context).getCategories();

    return Scaffold(
      body: FutureBuilder(
        future: response,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final listOfPost = json.decode(snapshot.data.bodyString);

            var notes = List<ListM>();

           for (var post in listOfPost) {
             
              notes.add(ListM.fromJson(post));
           }
            
            // print(listOfPost[3]);
            return Center(
              child: Text(notes[0].kid[0].kid[0].name),
            );
          } else {
            return Center(child: Text('loading ...'));
          }
        },
      ),
    );
  }
}
