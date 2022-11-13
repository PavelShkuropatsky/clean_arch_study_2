import 'package:flutter/material.dart';

import 'application.dart';
import 'core/service_locator.dart' as service_locator;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  service_locator.init();

  runApp(const Application());
}
