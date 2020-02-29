
import 'package:flutter/material.dart';

enum Flavor { STAGING, PRODUCTION }

class FlavorValues {
  FlavorValues({@required this.companyId, @required this.companyName});

  final String companyId;
  final String companyName;
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final Color primaryColor;
  final Color accentColor;
  final FlavorValues values;
  static FlavorConfig _instance;

  factory FlavorConfig(
      {@required Flavor flavor,
      String name,
      Color primaryColor: Colors.blue,
      Color accentColor: Colors.cyan,
      @required FlavorValues values}) {
    _instance ??= FlavorConfig._internal(
        flavor,
        name,
        primaryColor,
        accentColor,
        values
    );
    return _instance;
  }

  FlavorConfig._internal(
      this.flavor, this.name, this.primaryColor, this.accentColor, this.values);

  static FlavorConfig get instance {
    return _instance;
  }

  static bool isProduction() => _instance.flavor == Flavor.PRODUCTION;
  static bool isStaging() => _instance.flavor == Flavor.STAGING;
}
