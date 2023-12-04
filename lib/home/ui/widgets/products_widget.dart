import 'package:flutter/material.dart';
import 'package:my_app/home/domain/entity/products.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({required this.products, super.key});

  final Products products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: ListView.builder(
          itemCount: products.results.length,
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
                        products.results[index].productName,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        products.results[index].description,
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
}
