import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/loaders/loading_widget.dart';
import '../../../../core/widgets/common_widgets.dart';
import '../bloc/catalog_bloc.dart';
import '../widgets/catalog_view.dart';

/// Top-level catalog screen. Thin: delegates state to [CatalogBloc].
class ProductCatalogPage extends StatelessWidget {
  const ProductCatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Products',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        titleSpacing: 20,
      ),
      body: BlocBuilder<CatalogBloc, CatalogState>(
        builder: (context, state) => state.when(
          initial: () => const LoadingWidget(),
          loading: () => const LoadingWidget(),
          loaded: (snapshot) => CatalogView(snapshot: snapshot),
          error: (message) => ErrorMessageView(message: message),
        ),
      ),
    );
  }
}
