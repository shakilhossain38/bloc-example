import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/config/env.dart';
import 'package:my_app/config/service_locator.dart';
import 'package:my_app/home/ui/bloc/flavor_cubit.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder, Env env) async {
  Bloc.observer = const AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async {

      WidgetsFlutterBinding.ensureInitialized();

      await env.init();

      await sl.allReady();

      await sl<FlavorTypeCubit>().loadFlavor(env: env);
      // await Firebase.initializeApp();

      // FlutterError.onError = (details) {
      //   log(details.exceptionAsString(), stackTrace: details.stack);
      //   // FirebaseCrashlytics.instance.recordFlutterFatalError(details);
      // };
      runApp(await builder());
    },
    (error, stackTrace) {
      // log(error.toString(), stackTrace: stackTrace);
      // FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: true);
    },
  );
}
