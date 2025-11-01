import 'package:between_us/app/services/firebase_service.dart';
import 'package:between_us/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flex_storage/flex_storage.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  getIt
    ..registerLazySingleton<FirebaseService>(FirebaseService.new)
    ..registerLazySingleton<StorageManager>(() {
      late final storage = StorageManager();
      return storage;
    });
}
