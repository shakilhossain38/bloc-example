import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/config/service_locator.dart';
import 'package:my_app/home/ui/bloc/language_cubit.dart';
import 'package:my_app/home/ui/home_page.dart';
import 'package:my_app/l10n/l10n.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  static late LanguageCubit _languageCubit;

  @override
  void initState() {
    _languageCubit = sl<LanguageCubit>()..getSelectedLanguage('en');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, String>(
      bloc: _languageCubit,
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            useMaterial3: true,
          ),
          locale: Locale(state),
          builder: BotToastInit(),
          navigatorObservers: [BotToastNavigatorObserver()],
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const HomePage(),
        );
      },
    );
  }
}
