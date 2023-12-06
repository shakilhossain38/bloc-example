import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:my_app/home/domain/entity/products.dart';

@immutable
abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsLoading extends ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsLoaded extends ProductsState {
  const ProductsLoaded({
    required this.products,
    required this.totalCount,
  });

  final List<Result> products;
  final int totalCount;

  @override
  List<Object> get props => [products, totalCount];
}
