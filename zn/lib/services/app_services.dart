import 'package:zn/services/logger_service/dev_logger_service.dart';
import 'package:zn/services/logger_service/i_logger_service.dart';

class AppServices {
  AppServices._();

  static final _instance = AppServices._();

  late final ILoggerService _loggerService = const DevLoggerService();

  ILoggerService get loggerService => _instance._loggerService;
}
