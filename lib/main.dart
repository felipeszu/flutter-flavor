import 'package:flutter/material.dart';
import 'package:flutter_flavor/app.dart';
import 'package:flutter_flavor/flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.STAGING, 
    values: FlavorValues(
      companyId: 'main-model-0001', 
      companyName: 'Main Model'
    ),
  );
  runApp(MyApp());
} 
