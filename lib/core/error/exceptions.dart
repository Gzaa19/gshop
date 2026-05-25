/// Base exception for the data layer.
class AppException implements Exception {
  final String message;
  const AppException(this.message);

  @override
  String toString() => 'AppException($message)';
}

/// Thrown when a local data source fails (e.g. cache miss, parse error).
class CacheException extends AppException {
  const CacheException(super.message);
}

/// Thrown when a remote data source fails. Kept for forward-compat even
/// though the catalog is local-only today.
class ServerException extends AppException {
  const ServerException(super.message);
}
