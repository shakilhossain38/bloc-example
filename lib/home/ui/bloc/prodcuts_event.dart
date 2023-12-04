import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ProductsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialProductsEvent extends ProductsEvent {
  InitialProductsEvent({
    this.searchValue = '',
    this.shouldShouLoader = false,
  });

  final String searchValue;
  final bool shouldShouLoader;
}

class LoadedDetailsEvent extends ProductsEvent {}
