import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/error_handling.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/catalog_snapshot.dart';
import '../../domain/repositories/catalog_repository.dart';
import '../datasources/local/catalog_local_datasource.dart';

/// Concrete repository backed by the local data source.
@LazySingleton(as: CatalogRepository)
class CatalogRepositoryImpl implements CatalogRepository {
  final CatalogLocalDataSource _localDataSource;

  const CatalogRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, CatalogSnapshot>> getCatalog() async {
    try {
      final categories = await _localDataSource.fetchCategories();
      final products = await _localDataSource.fetchProducts();
      final total = await _localDataSource.fetchTotalProductCount();

      return Right(
        CatalogSnapshot(
          categories: categories.map((m) => m.toEntity()).toList(),
          products: products.map((m) => m.toEntity()).toList(),
          totalProductCount: total,
        ),
      );
    } catch (error) {
      return Left(mapExceptionToFailure(error));
    }
  }
}
