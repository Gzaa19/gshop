part of 'catalog_bloc.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.initial() = _Initial;
  const factory CatalogState.loading() = _Loading;
  const factory CatalogState.loaded(CatalogSnapshot snapshot) = _Loaded;
  const factory CatalogState.error(String message) = _Error;
}
