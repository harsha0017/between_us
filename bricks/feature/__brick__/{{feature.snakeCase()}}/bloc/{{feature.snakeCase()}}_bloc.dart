import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature.snakeCase()}}_bloc.freezed.dart';

part '{{feature.snakeCase()}}_event.dart';

part '{{feature.snakeCase()}}_state.dart';

class {{feature.pascalCase()}}Bloc extends Bloc<{{feature.pascalCase()}}Event, {{feature.pascalCase()}}State> {
  {{feature.pascalCase()}}Bloc()
      : super(
          OnStart(
            store: const {{feature.pascalCase()}}StateStore(),
          ),
      ) {
    on<Start>(_handleInitial);
  }

  void _handleInitial(_, Emitter<{{feature.pascalCase()}}State> emit) {}

  void start() {
    add(Start());
  }
}
