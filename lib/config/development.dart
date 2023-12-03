import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:my_app/config/env.dart';

class Development extends Env {
  Development() {
    appName = 'Test App Dev';
    baseUrl = 'https://panel.supplyline.network';
    primarySwatch = const Color(0xff644ABE);
    environmentType = EnvType.development;
    logLevel = Level.ALL;
  }
}
