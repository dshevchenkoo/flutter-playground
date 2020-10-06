import 'package:flutter/material.dart';

const _padding = const EdgeInsets.all(20.0);

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
        decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width: 400,
        height: 400,
        child: Column(
          children: [
            Padding(
              padding: _padding,
              child: Text(
                'Hello!',
                style: TextStyle(fontSize: 40, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'my name is',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Center(
              child: Container(
                width: 400,
                height: 180,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
