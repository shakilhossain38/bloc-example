import 'dart:convert';

import 'package:bot_toast/bot_toast.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/core/utils/urls.dart';
import 'package:my_app/home/data/model/products_response.dart';

abstract class ProductSource {
  Future<ProductResponseModel> getProductsResponse(
    String searchValue, {
    bool showLoader = false,
    int offset = 10,
  });
}

class ProductSourceImpl implements ProductSource {
  @override
  Future<ProductResponseModel> getProductsResponse(
    String searchValue, {
    bool showLoader = false,
    int offset = 10,
  }) async {
    if (!showLoader && offset == 10) {
      BotToast.showLoading();
    }
    try {
      final response = await http.get(
        Uri.parse(
          '${Urls.baseUrl}/${Urls.productsUrl}&offset=$offset&search=${searchValue ?? ""}',
        ),
      );

      final jsonData =
          productResponseModelFromJson(utf8.decode(response.bodyBytes));
      BotToast.closeAllLoading();
      return jsonData;
    } catch (error) {
      BotToast.closeAllLoading();
      return productResponseModelFromJson('');
    }
  }
}
