import "package:flutter/material.dart";

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter += 1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(child: Text("$_counter"),),
      appBar: AppBar(
        title: Text('Mohit'),
      ),
    );
  }
}
