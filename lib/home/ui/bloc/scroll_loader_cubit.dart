import 'package:flutter_bloc/flutter_bloc.dart';

class ScrollLoaderCubit extends Cubit<bool> {
  ScrollLoaderCubit() : super(false);

  Future<void> getScrollStatus({required bool status}) async {
    emit(status);
  }
}
