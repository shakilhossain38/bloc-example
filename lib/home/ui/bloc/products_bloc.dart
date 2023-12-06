import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/config/service_locator.dart';
import 'package:my_app/home/domain/entity/products.dart';
import 'package:my_app/home/domain/repository/products_repository.dart';
import 'package:my_app/home/ui/bloc/prodcuts_event.dart';
import 'package:my_app/home/ui/bloc/products_state.dart';
import 'package:my_app/home/ui/bloc/scroll_loader_cubit.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsLoading()) {
    on<InitialProductsEvent>((event, emit) async {
       var productsList = <Result>[];

      if (event.offset == 10) {
        emit(ProductsLoading());
      }
      final products = await sl<ProductsRepository>().getProducts(
        event.searchValue,
        showLoader: event.shouldShouLoader,
        offset: event.offset,
      );
       productsList = [...event.results, ...products.data.products.results];
       emit(
        ProductsLoaded(
          products: productsList,
          totalCount: products.data.products.totalCount,
        ),
      );

      await sl<ScrollLoaderCubit>().getScrollStatus(status: false);
    });
  }
}
