import 'package:flutter/material.dart';
import 'package:merchant_app/pages/login_page.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Navigator.canPop(context);
      },
      child: MaterialApp(
        title: 'TheGorgeousLogin',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
      ),
    );
  }
}
