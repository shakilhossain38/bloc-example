import 'package:flutter/material.dart';
import 'package:my_app/config/service_locator.dart';
import 'package:my_app/home/domain/entity/products.dart';
import 'package:my_app/home/ui/bloc/offset_cubit.dart';
import 'package:my_app/home/ui/bloc/prodcuts_event.dart';
import 'package:my_app/home/ui/bloc/products_bloc.dart';
import 'package:my_app/home/ui/bloc/scroll_loader_cubit.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({
    required this.searchValue,
    required this.totalCount,
    required this.products,
    super.key,
  });

  final List<Result> products;
  final int totalCount;
  final String searchValue;

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() async {
      if (_scrollController.offset ==
          _scrollController.position.maxScrollExtent) {
        if (!sl<ScrollLoaderCubit>().state) {
          if (widget.totalCount > widget.products.length) {
            await _setScrollStatus(true);
            await sl<OffsetCubit>().getOffset(sl<OffsetCubit>().state + 10);

            setState(() {});

            await getProducts(
              offset: sl<OffsetCubit>().state,
              results: widget.products,
            );
          }
        }
      }
    });

    super.initState();
  }

  Future<void> getProducts({
    required List<Result> results,
    bool shouldShowLoader = false,
    int offset = 10,
  }) async {
    sl<ProductsBloc>().add(
      InitialProductsEvent(
        searchValue: widget.searchValue,
        shouldShouLoader: shouldShowLoader,
        offset: offset,
        results: results,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: ListView.builder(
          itemCount: widget.products.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.products[index].productName,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.products[index].description,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _setScrollStatus(bool status) async {
    await sl<ScrollLoaderCubit>().getScrollStatus(status: status);
  }
}
