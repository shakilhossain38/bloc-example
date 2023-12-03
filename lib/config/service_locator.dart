import 'package:get_it/get_it.dart';
import 'package:my_app/home/data/repository/implementation/products_repository_impl.dart';
import 'package:my_app/home/data/repository/source/products_source.dart';
import 'package:my_app/home/domain/repository/products_repository.dart';
import 'package:my_app/home/ui/bloc/flavor_cubit.dart';
import 'package:my_app/home/ui/bloc/products_bloc.dart';

GetIt sl = GetIt.instance;

Future<void> setUpServiceLocators() async {
  await sl.reset();

  sl
    ..registerSingleton<FlavorTypeCubit>(
      FlavorTypeCubit(),
    )
    ..registerSingleton<ProductSource>(
      ProductSourceImpl(),
    )
    ..registerFactory<ProductsBloc>(
      () => ProductsBloc(),
    )
    ..registerSingleton<ProductsRepository>(
      ProductsRepositoryImpl(),
    );
}
