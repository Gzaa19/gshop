import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/catalog_snapshot.dart';
import '../../domain/usecases/get_catalog.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';
part 'catalog_bloc.freezed.dart';

@injectable
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final GetCatalog _getCatalog;

  CatalogBloc(this._getCatalog) : super(const CatalogState.initial()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(_Started event, Emitter<CatalogState> emit) async {
    emit(const CatalogState.loading());
    final result = await _getCatalog(const NoParams());
    emit(
      result.fold(
        (failure) => CatalogState.error(failure.message),
        (snapshot) => CatalogState.loaded(snapshot),
      ),
    );
  }
}
