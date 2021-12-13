
   
import 'package:flutter/material.dart';
//import 'package:flutter_drawer_example/privacy_policy.dart';
//import 'package:flutter_drawer_example/send_feedback.dart';
//import 'package:flutter_drawer_example/settings.dart';

//import 'contacts.dart';
//import 'dashboard.dart';
//import 'events.dart';
//import 'package:project2/pages/headerdrawer.dart';
import 'package:project2/pages/homepage.dart';
//import 'notes.dart';
//import 'notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
