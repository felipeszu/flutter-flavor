import 'package:flutter/material.dart';
import 'package:flutter_flavor/app.dart';
import 'package:flutter_flavor/flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.PRODUCTION, 
    values: FlavorValues(
      companyId: 'beta-0001', 
      companyName: 'BETA S/A'
    ),
    primaryColor: Colors.blueGrey,
    accentColor:  Colors.pinkAccent
  );
  runApp(MyApp());
} 
