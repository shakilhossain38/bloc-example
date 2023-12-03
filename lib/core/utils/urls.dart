import 'package:my_app/config/service_locator.dart';
import 'package:my_app/home/ui/bloc/flavor_cubit.dart';

class Urls {
  static String get baseUrl => sl<FlavorTypeCubit>().state.baseUrl;
  static String productsUrl = 'api/product/search-suggestions/?limit=10';
}
