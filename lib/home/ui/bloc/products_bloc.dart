import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/config/service_locator.dart';
import 'package:my_app/home/domain/repository/products_repository.dart';
import 'package:my_app/home/ui/bloc/prodcuts_event.dart';
import 'package:my_app/home/ui/bloc/products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsLoading()) {
    on<InitialProductsEvent>((event, emit) async {
      if (event.shouldShouLoader) {
        emit(ProductsLoading());
      }
      final products = await sl<ProductsRepository>().getProducts(
        event.searchValue,
        showLoader: event.shouldShouLoader,
      );
      emit(ProductsLoaded(products: products.data.products));
    });
  }
}
