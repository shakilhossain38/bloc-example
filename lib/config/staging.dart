import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:my_app/config/env.dart';

class Staging extends Env {
  Staging() {
    appName = 'Test App Staging';
    baseUrl = 'https://panel.supplyline.network';
    primarySwatch = Colors.amber;
    environmentType = EnvType.staging;
    logLevel = Level.OFF;
  }
}
