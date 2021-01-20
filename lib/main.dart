import 'package:flutter/material.dart';
import 'package:zoom_app/Dashboard.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "First App ",
    home: Dashboard(),
    theme: ThemeData(
      primaryColor: Colors.red
    ),
  ));
}

