# GShop

A Flutter product catalog UI built with **Clean Architecture**, demonstrating proper separation of concerns, state management with BLoC, and dependency injection.

## Screenshots

| Catalog Screen |
|:-:|
| Product listing with categories, search bar, and grid layout |

## Features

- Product catalog with grid layout
- Horizontal scrollable category filter
- Search bar UI
- Discount badge and price display
- Network images with loading/error states

## Architecture

This project follows **Clean Architecture** principles with a feature-based folder structure:

```
lib/
├── main.dart
├── app.dart
├── config/
│   ├── app_config.dart
│   └── routes.dart
├── core/
│   ├── bloc/
│   ├── di/
│   ├── error/
│   ├── loaders/
│   ├── theme/
│   ├── usecase/
│   └── widgets/
└── features/
    └── catalog/
        ├── data/
        │   ├── datasources/
        │   ├── models/
        │   └── repositories/
        ├── domain/
        │   ├── entities/
        │   ├── repositories/
        │   └── usecases/
        └── presentation/
            ├── bloc/
            ├── pages/
            └── widgets/
```

### Layer Responsibilities

| Layer | Role |
|-------|------|
| **Domain** | Entities, repository contracts, use cases (pure Dart) |
| **Data** | Repository implementations, data sources, models |
| **Presentation** | Pages, widgets, BLoC (state management) |

## Tech Stack

| Category | Library |
|----------|---------|
| State Management | `flutter_bloc` |
| Dependency Injection | `get_it` + `injectable` |
| Routing | `go_router` |
| Immutable State/Events | `freezed` |
| Error Handling | `dartz` (Either) |
| Equality | `equatable` |

## Getting Started

### Prerequisites

- Flutter SDK `>=3.10.1`
- Dart `>=3.10.1`

### Installation

```bash
# Clone the repository
git clone https://github.com/Gzaa19/gshop.git
cd gshop

# Install dependencies
flutter pub get

# Run code generation (freezed + injectable)
dart run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

## Key Widgets Used

| Widget | Usage |
|--------|-------|
| `Column` | Vertical layout for product cards, category items, page sections |
| `Row` | Horizontal layout for price row, search bar, product grid pairs |
| `ListView` | Vertical scrolling (main body), horizontal scrolling (categories) |
| `Image.network` | Product images loaded from URLs with loading/error builders |

## Project Structure Details

- **`core/di/`** — GetIt service locator with Injectable auto-registration
- **`core/error/`** — Custom exceptions and Failure classes with Either pattern
- **`core/theme/`** — Centralized colors and ThemeData
- **`features/catalog/domain/`** — `Product`, `Category`, `CatalogSnapshot` entities + `GetCatalog` use case
- **`features/catalog/data/`** — Local data source with sample data, repository implementation
- **`features/catalog/presentation/bloc/`** — `CatalogBloc` with Freezed events/states
- **`features/catalog/presentation/widgets/`** — Reusable UI components (one widget per file)

## Author

**Gaza** — [@Gzaa19](https://github.com/Gzaa19)
