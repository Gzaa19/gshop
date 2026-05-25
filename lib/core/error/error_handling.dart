import 'exceptions.dart';
import 'failures.dart';

/// Maps low-level [AppException]s to domain [Failure]s.
Failure mapExceptionToFailure(Object error) {
  if (error is CacheException) return CacheFailure(error.message);
  if (error is ServerException) return ServerFailure(error.message);
  if (error is AppException) return UnknownFailure(error.message);
  return UnknownFailure(error.toString());
}
