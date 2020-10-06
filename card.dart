import 'package:flutter/material.dart';

const _padding = const EdgeInsets.all(90.0);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        width: 300,
        height: 400,
        child: Padding(
            padding: _padding,
            child: Text(
                'Hello!',
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
      ),
    );
    throw UnimplementedError();
  }
}
