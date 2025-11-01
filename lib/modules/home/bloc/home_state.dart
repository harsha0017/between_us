part of 'home_bloc.dart';

sealed class HomeState {
  HomeState({required this.store});

  final HomeStateStore store;
}

class OnStart extends HomeState {
  OnStart({required super.store});
}

class OnLoading extends HomeState {
  OnLoading({required super.store});
}

class OnException extends HomeState {
  OnException({
    required super.store,
  });
}

@freezed
sealed class HomeStateStore with _$HomeStateStore {
  const factory HomeStateStore({
    @Default(false) bool loading,
  }) = _HomeStateStore;
}
