import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/catalog_snapshot.dart';

/// Repository contract owned by the domain layer.
abstract class CatalogRepository {
  Future<Either<Failure, CatalogSnapshot>> getCatalog();
}
