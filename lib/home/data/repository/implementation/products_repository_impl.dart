import 'package:my_app/config/service_locator.dart';
import 'package:my_app/home/data/repository/source/products_source.dart';
import 'package:my_app/home/domain/entity/products.dart';

import 'package:my_app/home/domain/repository/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  @override
  Future<ProductsModel> getProducts(
    String searchValue, {
    bool showLoader = false,
    int offset = 10,
  }) async {
    final surahDetailsResponse = await sl<ProductSource>().getProductsResponse(
      searchValue,
      showLoader: showLoader,
      offset: offset,
    );
    return surahDetailsResponse.toEntity();
  }
}
