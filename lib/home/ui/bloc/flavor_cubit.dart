import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/config/env.dart';

class FlavorTypeCubit extends Cubit<Env> {
  FlavorTypeCubit() : super(Env());

  Future<void> loadFlavor({
    required Env env,
  }) async {
    emit(env);
  }
}
