import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:my_app/home/domain/entity/products.dart';

@immutable
abstract class ProductsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialProductsEvent extends ProductsEvent {
  InitialProductsEvent({
    this.searchValue = '',
    this.shouldShouLoader = false,
    this.offset = 10,
    this.results = const [],
  });

  final String searchValue;
  final bool shouldShouLoader;
  final int offset;
  final List<Result> results;
}

class LoadedDetailsEvent extends ProductsEvent {}
