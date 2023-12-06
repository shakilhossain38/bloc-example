import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/config/service_locator.dart';
import 'package:my_app/home/domain/entity/products.dart';
import 'package:my_app/home/ui/bloc/offset_cubit.dart';
import 'package:my_app/home/ui/bloc/prodcuts_event.dart';
import 'package:my_app/home/ui/bloc/products_bloc.dart';
import 'package:my_app/home/ui/bloc/products_state.dart';
import 'package:my_app/home/ui/bloc/scroll_loader_cubit.dart';
import 'package:my_app/home/ui/widgets/exports.dart';
import 'package:my_app/l10n/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ProductsBloc _productsBloc;
  final TextEditingController _textEditingController = TextEditingController();
  List<Result> products = [];

  @override
  void initState() {
    _setScrollStatus(false);
    getProducts(
      shouldShowLoader: true,
      results: [],
    );

    super.initState();
  }

  Future<void> getProducts({
    required List<Result> results,
    bool shouldShowLoader = false,
    int offset = 10,
  }) async {
    _productsBloc = sl<ProductsBloc>()
      ..add(
        InitialProductsEvent(
          searchValue: _textEditingController.text,
          shouldShouLoader: shouldShowLoader,
          offset: offset,
          results: results,
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
          if (productState.products.isEmpty) {
            return Expanded(
              child: Center(
                child: Text(context.l10n.noProduct),
              ),
            );
          } else {
            return _productsListWidget(
              productState.products,
              productState.totalCount,
            );
          }
        } else {
          // if (!sl<ScrollLoaderCubit>().state &&
          //     productState is ProductsLoading) {
          return const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
          // } else {
          //   return const SizedBox();
          // }
        }
      },
    );
  }

  Widget _textFieldWidget() {
    return TextFormField(
      controller: _textEditingController,
      onFieldSubmitted: (v) {
        sl<OffsetCubit>().getOffset(10);
        setState(() {});
        getProducts(results: []);
      },
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

  Widget _productsListWidget(List<Result> products, int totalCount) {
    return BlocBuilder<ScrollLoaderCubit, bool>(
      bloc: sl<ScrollLoaderCubit>(),
      builder: (context, state) {
        return Expanded(
          child: Column(
            children: [
              ProductsWidget(
                products: products,
                searchValue: _textEditingController.text,
                totalCount: totalCount,
              ),
              if (state)
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _setScrollStatus(bool status) async {
    await sl<ScrollLoaderCubit>().getScrollStatus(status: status);
  }
}
