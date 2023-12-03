import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/config/service_locator.dart';
import 'package:my_app/home/domain/entity/products.dart';
import 'package:my_app/home/ui/bloc/prodcuts_event.dart';
import 'package:my_app/home/ui/bloc/products_bloc.dart';
import 'package:my_app/home/ui/bloc/products_state.dart';

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
    getProducts('');
    super.initState();
  }

  void getProducts(String searchValue) {
    _productsBloc = sl<ProductsBloc>()
      ..add(InitialProductsEvent(searchValue: searchValue));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App bar')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              TextFormField(
                onFieldSubmitted: getProducts,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: 'Search here...',
                  fillColor: Colors.white70,
                ),
              ),
              BlocBuilder<ProductsBloc, ProductsState>(
                bloc: _productsBloc,
                builder: (context, productState) {
                  print('saddsadadasa ${productState}');
                  if (productState is ProductsLoaded) {
                    products = productState.products.data.products;

                  }
                  return productState is ProductsLoaded
                      ? ListView.builder(

                          itemCount: products?.results.length,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        products!.results[index].productName,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        products!.results[index].description,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })
                      : const Center(child: CircularProgressIndicator());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
