import 'package:flutter/material.dart';
import 'package:food_app/homePage.dart';
import 'package:food_app/starterPage.dart';

main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(fontFamily: 'Ropboto'),
      home: StarterPage(),
    ),
  );
}