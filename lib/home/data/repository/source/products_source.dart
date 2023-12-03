import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_app/core/utils/urls.dart';
import 'package:my_app/home/data/model/products_response.dart';
import 'package:my_app/home/domain/entity/products.dart';

abstract class ProductSource {
  Future<ProductsModel> getProductsResponse(String offset);
}

class ProductSourceImpl implements ProductSource {
  @override
  Future<ProductsModel> getProductsResponse(String searchValue) async {
    try {
      final response = await http
          .get(Uri.parse('${Urls.baseUrl}/${Urls.productsUrl}&search=${searchValue ?? ""}'));

      final jsonData =
          productResponseModelFromJson(utf8.decode(response.bodyBytes));
      return jsonData.toEntity();
    } catch (error) {
      throw Exception(
        'Error fetching data',
      );
    }
  }
}
