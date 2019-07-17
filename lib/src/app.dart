import 'dart:convert';

import "package:flutter/material.dart";
import 'package:http/http.dart' show get;
import 'model/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _counter = 0;
  List<ImageModel> images = [];
  void fetchImage() async {
    _counter++;
    final response = await get('https://jsonplaceholder.typicode.com/photos/$_counter',);
    final imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child: Icon(Icons.add),
      ),
      body: ImageList(images),
      appBar: AppBar(
        title: Text('Mohit'),
      ),
    );
  }
}
