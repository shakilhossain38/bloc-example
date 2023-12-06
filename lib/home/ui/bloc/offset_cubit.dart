import 'package:flutter_bloc/flutter_bloc.dart';

class OffsetCubit extends Cubit<int> {
  OffsetCubit() : super(10);

  Future<void> getOffset(int offset) async {
    emit(offset);
  }
}
