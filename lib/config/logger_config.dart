import 'package:logger/logger.dart';

class LoggerDebug {
  static void debugLog(String log) {
    var logger = Logger(
      filter: null,
      printer: PrettyPrinter(),
      output: null,
    );

    logger.d(log);
  }

  static void errorLog(String log) {
    var logger = Logger(
      filter: null,
      printer: PrettyPrinter(),
      output: null,
    );

    logger.e(log);
  }

  static void infoLog(String log) {
    var logger = Logger(
      filter: null,
      printer: PrettyPrinter(),
      output: null,
    );

    logger.i(log);
  }
}
