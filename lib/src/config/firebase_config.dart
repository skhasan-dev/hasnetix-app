import 'package:firebase_core/firebase_core.dart';
import 'package:hasnetix/bootstrap.dart' show Flavor;
import 'package:hasnetix/firebase/prod/firebase_options.dart' as prod;
import 'package:hasnetix/firebase/stage/firebase_options.dart' as stage;

Future<void> initializeFirebaseApp(Flavor flavor) async {
  final firebaseOptions = switch (flavor) {
    Flavor.prod => prod.DefaultFirebaseOptions.currentPlatform,
    Flavor.stage => stage.DefaultFirebaseOptions.currentPlatform,
  };
  await Firebase.initializeApp(options: firebaseOptions);
}
