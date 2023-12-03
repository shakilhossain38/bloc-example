import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import 'package:my_app/config/service_locator.dart';

enum EnvType {
  development,
  staging,
  production,
}

class Env {
  Env() {
    value = this;
  }

  static late Env value;

  late String appName;
  late String baseUrl;
  late Color primarySwatch;
  EnvType environmentType = EnvType.development;
  Level logLevel = Level.OFF;

  Future<void> init() async {
    await setUpServiceLocators();
    await sl.allReady();
  }
}
