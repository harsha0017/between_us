part of 'connect_bloc.dart';

sealed class ConnectState {
  ConnectState({required this.store});

  final ConnectStateStore store;
}

class OnStart extends ConnectState {
  OnStart({required super.store});
}

class OnLoading extends ConnectState {
  OnLoading({required super.store});
}

class OnException extends ConnectState {
  OnException({
    required super.store,
  });
}

@freezed
sealed class ConnectStateStore with _$ConnectStateStore {
  const factory ConnectStateStore({
    @Default(false) bool loading,
  }) = _ConnectStateStore;
}
