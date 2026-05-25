// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/catalog/data/datasources/local/catalog_local_datasource.dart'
    as _i181;
import '../../features/catalog/data/repositories/catalog_repository_impl.dart'
    as _i428;
import '../../features/catalog/domain/repositories/catalog_repository.dart'
    as _i1018;
import '../../features/catalog/domain/usecases/get_catalog.dart' as _i564;
import '../../features/catalog/presentation/bloc/catalog_bloc.dart' as _i773;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.lazySingleton<_i181.CatalogLocalDataSource>(
    () => const _i181.CatalogLocalDataSourceImpl(),
  );
  gh.lazySingleton<_i1018.CatalogRepository>(
    () => _i428.CatalogRepositoryImpl(gh<_i181.CatalogLocalDataSource>()),
  );
  gh.factory<_i564.GetCatalog>(
    () => _i564.GetCatalog(gh<_i1018.CatalogRepository>()),
  );
  gh.factory<_i773.CatalogBloc>(
    () => _i773.CatalogBloc(gh<_i564.GetCatalog>()),
  );
  return getIt;
}
