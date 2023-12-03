import 'dart:math';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:my_app/home/domain/entity/products.dart';

@immutable
abstract class ProductsState extends Equatable {
  @override
  List<Object> get props => [];
}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {

  ProductsLoaded({required this.products});
  final ProductsModel products;

  @override
  List<Object> get props => [products, Random().nextInt(10000)];
}
