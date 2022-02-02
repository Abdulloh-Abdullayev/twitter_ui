import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/HomePage.dart';
import 'package:twitter_ui/pages/TwitterUI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: TwitterUI(),
      routes: {
        HomePage.id: (contex) => HomePage(),
        TwitterUI.id: (contex) => TwitterUI(),
    },
    );
  }
}


