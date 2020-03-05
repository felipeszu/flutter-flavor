import 'package:flutter/material.dart';
import 'package:flutter_flavor/app.dart';
import 'package:flutter_flavor/flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.STAGING, 
    values: FlavorValues(
      companyId: 'alpha-0001', 
      companyName: 'Alpha S/A'
    ),
    primaryColor: Colors.red,
    accentColor:  Color.fromRGBO(87, 115, 45, 1)
  );
  runApp(MyApp());
} 
