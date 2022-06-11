import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

const String _kIsLightModeKey = "lightTheme";

class ThemeService extends GetxService {
  static ThemeService get instance => Get.find<ThemeService>();

  late final Box<bool> _cache;

  Future<ThemeService> init() async {
    _cache = await Hive.openBox('theme_mode');
    return this;
  }

  ThemeMode get themeMode {
    final bool isLightThemeMode = _cache.get(_kIsLightModeKey) ?? true;
    if (isLightThemeMode) {
      return ThemeMode.light;
    } else {
      return ThemeMode.dark;
    }
  }

  void enableDarkTheme() async {
    await _cache.put(_kIsLightModeKey, false);
    Get.changeThemeMode(ThemeMode.dark);
  }

  void enableLightTheme() async {
    await _cache.put(_kIsLightModeKey, true);
    Get.changeThemeMode(ThemeMode.light);
  }

  // ignore: always_specify_types
  Future switchThemeMode() async {
    if (Get.isDarkMode) {
      return enableLightTheme();
    } else {
      return enableDarkTheme();
    }
  }
}
