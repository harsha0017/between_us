import 'package:between_us/app/dependencies/configure_dependencies.dart';
import 'package:between_us/app/services/firebase_service.dart';
import 'package:between_us/modules/draft_post/domain/models/post_entry.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft_post_bloc.freezed.dart';

part 'draft_post_event.dart';

part 'draft_post_state.dart';

class DraftPostBloc extends Bloc<DraftPostEvent, DraftPostState> {
  DraftPostBloc() : super(OnStart(store: const DraftPostStateStore())) {
    on<Start>(_handleInitial);
    on<Submit>(_handleSubmit);
  }

  void _handleInitial(_, Emitter<DraftPostState> emit) {}

  Future<void> _handleSubmit(Submit event, Emitter<DraftPostState> emit) async {
    final service = getIt<FirebaseService>();
    await service.createPost(postEntry: event.postEntry);
    emit(OnSubmit(store: state.store));
  }

  void start() {
    add(Start());
  }
}
