import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hasnetix/src/config/index.dart' show FlavorConfig;

class FirebaseCrashlyticsService {
  final FirebaseCrashlytics _instance = FirebaseCrashlytics.instance;

  void recordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<Object> information = const [],
    bool? printDetails,
    bool fatal = false,
  }) {
    _instance.recordError(
      exception,
      stack,
      reason: reason,
      information: information,
      printDetails: printDetails,
      fatal: fatal,
    );
  }

  void logError(
    String message, {
    Exception? ex,
    StackTrace? stack,
    bool printDetails = true,
  }) {
    _instance.recordError(
      ex,
      stack,
      reason: message,
      printDetails: printDetails,
    );
  }

  void log(String message) {
    if (FlavorConfig.isProduction()) {
      _instance.log(message);
    }
  }
}
