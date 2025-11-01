part of 'draft_post_bloc.dart';

sealed class DraftPostState {
  DraftPostState({required this.store});

  final DraftPostStateStore store;
}

class OnStart extends DraftPostState {
  OnStart({required super.store});
}

class OnLoading extends DraftPostState {
  OnLoading({required super.store});
}

class OnException extends DraftPostState {
  OnException({required super.store});
}

class OnSubmit extends DraftPostState {
  OnSubmit({required super.store});
}

@freezed
sealed class DraftPostStateStore with _$DraftPostStateStore {
  const factory DraftPostStateStore({@Default(false) bool loading}) =
      _DraftPostStateStore;
}
