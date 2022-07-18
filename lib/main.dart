import 'package:flutter/material.dart';
import 'package:food_app/starterPage.dart';

main(){
  runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const StarterPage(),
    )
  );
}