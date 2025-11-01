part of '{{feature.snakeCase()}}_bloc.dart';

sealed class {{feature.pascalCase()}}State {
  {{feature.pascalCase()}}State({required this.store});

  final {{feature.pascalCase()}}StateStore store;
}

class OnStart extends {{feature.pascalCase()}}State {
  OnStart({required super.store});
}

class OnLoading extends {{feature.pascalCase()}}State {
  OnLoading({required super.store});
}

class OnException extends {{feature.pascalCase()}}State {
  OnException({
    required super.store,
  });
}

@freezed
sealed class {{feature.pascalCase()}}StateStore with _${{feature.pascalCase()}}StateStore {
  const factory {{feature.pascalCase()}}StateStore({
    @Default(false) bool loading,
  }) = _{{feature.pascalCase()}}StateStore;
}
