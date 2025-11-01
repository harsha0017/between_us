import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{{fullPath}}}/bloc/{{feature.snakeCase()}}_bloc.dart';

class {{feature.pascalCase()}}Screen extends StatelessWidget {
  const {{feature.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => {{feature.pascalCase()}}Bloc()..start(),
      child: BlocConsumer<{{feature.pascalCase()}}Bloc, {{feature.pascalCase()}}State>(
        listener: _handleState,
        builder: (BuildContext context, {{feature.pascalCase()}}State state) {
          return const Scaffold(
            body: Placeholder(),
          );
        },
      ),
    );
  }

  Future<void> _handleState(BuildContext context, {{feature.pascalCase()}}State state) async {
    switch (state) {
      case _:
        // Ignore
        return;
    }
  }
}
