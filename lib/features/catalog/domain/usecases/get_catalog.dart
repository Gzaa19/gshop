import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/catalog_snapshot.dart';
import '../repositories/catalog_repository.dart';

/// Use case: load the catalog snapshot (categories + products + count).
@injectable
class GetCatalog implements UseCase<CatalogSnapshot, NoParams> {
  final CatalogRepository _repository;

  const GetCatalog(this._repository);

  @override
  Future<Either<Failure, CatalogSnapshot>> call(NoParams params) {
    return _repository.getCatalog();
  }
}
