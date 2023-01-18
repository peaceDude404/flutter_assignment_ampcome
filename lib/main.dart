import 'package:flutter/material.dart';
import 'package:flutter_assignment/create_account.dart';
import 'create_account.dart';

void main() {
  runApp(FlutterAssignment());
}

class FlutterAssignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: CreateAccount(),
    );
  }
}