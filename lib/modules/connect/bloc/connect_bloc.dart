import 'package:between_us/app/constants/storage_constants.dart';
import 'package:between_us/app/dependencies/configure_dependencies.dart';
import 'package:flex_storage/storage_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connect_bloc.freezed.dart';

part 'connect_event.dart';

part 'connect_state.dart';

class ConnectBloc extends Bloc<ConnectEvent, ConnectState> {
  ConnectBloc() : super(OnStart(store: const ConnectStateStore())) {
    on<Start>(_handleInitial);
  }

  Future<void> _handleInitial(_, Emitter<ConnectState> emit) async {
    final storage = getIt<StorageManager>();
    final firstSessionClient = await storage
        .getGenericKeyValueStorageClient<bool>(
          StorageConstants.isFirstSessionCompleted,
        );
    await firstSessionClient.save(true);
  }

  void start() {
    add(Start());
  }
}
