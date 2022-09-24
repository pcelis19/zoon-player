import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';
import 'package:zn/services/logger_service/i_logger_service.dart';

class DevLoggerService extends ILoggerService {
  const DevLoggerService();
  @override
  void log(Object object) {
    if (kDebugMode) {
      dev.log(object.toString());
    }
  }
}
