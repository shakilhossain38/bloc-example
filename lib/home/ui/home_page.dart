import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/config/service_locator.dart';
import 'package:my_app/home/domain/entity/products.dart';
import 'package:my_app/home/ui/bloc/prodcuts_event.dart';
import 'package:my_app/home/ui/bloc/products_bloc.dart';
import 'package:my_app/home/ui/bloc/products_state.dart';
import 'package:my_app/home/ui/widgets/exports.dart';
import 'package:my_app/l10n/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ProductsBloc _productsBloc;
  final ScrollController _scrollController = ScrollController();
  Products? products;

  @override
  void initState() {
    getProducts(
      '',
      shouldShowLoader: true,
    );
    super.initState();
  }

  void getProducts(
    String searchValue, {
    bool shouldShowLoader = false,
  }) {
    _productsBloc = sl<ProductsBloc>()
      ..add(
        InitialProductsEvent(
          searchValue: searchValue,
          shouldShouLoader: shouldShowLoader,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          _textFieldWidget(),
          _productsBody(),
        ],
      ),
    );
  }

  Widget _productsBody() {
    return BlocBuilder<ProductsBloc, ProductsState>(
      bloc: _productsBloc,
      builder: (context, productState) {
        if (productState is ProductsLoaded) {
          products = productState.products;
        }

        if (productState is ProductsLoaded) {
          return _productsListWidget();
        } else {
          return const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  Widget _textFieldWidget() {
    return TextFormField(
      onFieldSubmitted: getProducts,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        hintStyle: TextStyle(color: Colors.grey[800]),
        hintText: context.l10n.search,
        fillColor: Colors.white70,
      ),
    );
  }

  PreferredSizeWidget _appBarWidget() {
    return AppBarWidget(productsBloc: _productsBloc);
  }

  Widget _productsListWidget() {
    return ProductsWidget(
      products: products!,
    );
  }
}
