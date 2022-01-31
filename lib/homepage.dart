import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void _increament() {
    setState(() {
      counter++;
    });
  }

  void _decreament() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You have pushed this button this many times',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _decreament,
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: _increament,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
