import "package:flutter/material.dart";
import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _counter = 0;

  void fetchImage() {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text("$_counter"),
      ),
      appBar: AppBar(
        title: Text('Mohit'),
      ),
    );
  }
}
