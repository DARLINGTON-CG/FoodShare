import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodshare/presentation/core/app_widget.dart';

import 'injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark
  ));
  configureDependencies();
  runApp(const AppWidget());
}
