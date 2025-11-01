import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Running code gen');

  // Run `flutter packages get` after generation.
  await Process.run('flutter',
      ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs']);

  progress.complete();
}
