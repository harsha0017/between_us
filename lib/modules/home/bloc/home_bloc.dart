import 'package:between_us/app/dependencies/configure_dependencies.dart';
import 'package:between_us/app/services/firebase_service.dart';
import 'package:between_us/modules/draft_post/data/models/post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(OnStart(store: const HomeStateStore())) {
    on<Start>(_handleInitial);
  }
  final service = getIt<FirebaseService>();

  Future<void> _handleInitial(_, Emitter<HomeState> emit) async {
    emit(OnLoading(store: state.store));
    try {
      final posts = await service.fetchPosts();
      emit(OnLoaded(store: state.store.copyWith(posts: posts)));
    } catch (e) {
      emit(OnException(store: state.store));
    }
  }

  void start() {
    add(Start());
  }
}
