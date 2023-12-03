import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ProductsEvent extends Equatable {
  @override
  List<Object> get props => [Random().nextInt(100)];
}

class InitialProductsEvent extends ProductsEvent {
  InitialProductsEvent({this.searchValue = ''});

  final String searchValue;
}

class LoadedDetailsEvent extends ProductsEvent {}
