import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';

void main() {
  runApp(pickup_truck());
}

class pickup_truck extends StatelessWidget //for static bar
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Pick-up Truck"),
      ),
    ));
  }
}
