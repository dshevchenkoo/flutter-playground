import 'package:delo2/security/auth_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Model/home_model.dart';

void main() {
  runApp(Delo());
}

class Delo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeModel(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Auth()),
    );
  }
}
