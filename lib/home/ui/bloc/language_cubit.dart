import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<String> {
  LanguageCubit() : super('en');

  Future<void> getSelectedLanguage(String languageCode) async {
    emit(languageCode);
  }
}
