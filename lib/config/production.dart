import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:my_app/config/env.dart';

class Production extends Env {
  Production() {
    appName = 'Test App';
    baseUrl = 'https://panel.supplyline.network';
    primarySwatch = const Color(0xff644ABE);
    environmentType = EnvType.production;
    logLevel = Level.OFF;
  }
}
