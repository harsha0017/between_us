import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:between_us/modules/home/bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeBloc()..start(),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: _handleState,
        builder: (BuildContext context, HomeState state) {
          return const Scaffold(body: Placeholder());
        },
      ),
    );
  }

  Future<void> _handleState(BuildContext context, HomeState state) async {
    switch (state) {
      case _:
        return;
    }
  }
}
