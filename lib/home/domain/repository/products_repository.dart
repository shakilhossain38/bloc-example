import 'package:my_app/home/domain/entity/products.dart';

abstract class ProductsRepository {
  Future<ProductsModel> getProducts(String searchValue);
}
