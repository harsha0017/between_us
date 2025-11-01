import 'package:between_us/modules/connect/bloc/connect_bloc.dart';
import 'package:flex_design/extensions/build_context_extensions.dart';
import 'package:flex_design/flex_design.dart';
import 'package:flex_design/widgets/gap/flex_gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ConnectScreen extends StatelessWidget {
  const ConnectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ConnectBloc()..start(),
      child: BlocConsumer<ConnectBloc, ConnectState>(
        listener: _handleState,
        builder: (BuildContext context, ConnectState state) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsetsGeometry.all(
                context.i(context.padding.comfortable),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlexImage(
                    const IconImageConfig(Icons.favorite_border),
                    color: context.primitives.color.red.shade400,
                    width: context.i(context.primitives.spacing.space20),
                  ),
                  const FlexBodyH2.bold(
                    'Connect with Your Cherished Ones',
                    textAlign: TextAlign.center,
                  ),
                  FlexGap.grouped(),
                  FlexBodyMedium(
                    'Invite your partner or close friends to share beautiful memories and plan delightful moments together.',
                    textAlign: TextAlign.center,
                    color: context.color.information.primary,
                  ),
                  FlexGap.unrelated(),
                  FlexPrimaryButton(
                    'Proceed',
                    onPressed: () {
                      context.push('/home');
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _handleState(BuildContext context, ConnectState state) async {
    switch (state) {
      case _:
        // Ignore
        return;
    }
  }
}
