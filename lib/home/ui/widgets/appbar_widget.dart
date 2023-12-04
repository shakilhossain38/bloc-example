import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/config/service_locator.dart';
import 'package:my_app/core/utils/converter.dart';
import 'package:my_app/home/ui/bloc/language_cubit.dart';
import 'package:my_app/home/ui/bloc/products_bloc.dart';
import 'package:my_app/home/ui/bloc/products_state.dart';
import 'package:my_app/home/ui/widgets/exports.dart';
import 'package:my_app/l10n/l10n.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    required this.productsBloc,
  });

  final ProductsBloc productsBloc;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BlocBuilder<LanguageCubit, String>(
        bloc: sl<LanguageCubit>(),
        builder: (context, languageState) {
          return BlocBuilder<ProductsBloc, ProductsState>(
            bloc: productsBloc,
            builder: (context, productState) {
              if (productState is ProductsLoaded) {
                return Text(
                  context.l10n.appbarTitle(
                    decideNumber(
                      languageState,
                      productState.products.results.length,
                    ),
                    decideNumber(
                      languageState,
                      productState.products.totalCount,
                    ),
                  ),
                );
              } else {
                return const Text('');
              }
            },
          );
        },
      ),
      actions: [
        Row(
          children: [
            LanguageItem(
              color: Colors.green,
              onTap: () {
                changeLanguage('bn');
              },
              label: 'bn',
            ),
            LanguageItem(
              color: Colors.orange,
              onTap: () {
                changeLanguage('en');
              },
              label: 'en',
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }

  String decideNumber(String languageState, int number) {
    if (languageState == 'bn') {
      return number.toBanglaDigits();
    } else {
      return '$number';
    }
  }

  void changeLanguage(String languageCode) {
    sl<LanguageCubit>().getSelectedLanguage(languageCode);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
