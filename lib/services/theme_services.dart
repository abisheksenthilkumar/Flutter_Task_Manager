import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService{
  final _box = GetStorage();
  final _key = 'isDarkMode';
  _saveThemeToBox(bool isDarkMode)=>_box.write(_key, isDarkMode);
  bool _loadThemeFromBox()=>_box.read(_key)??false;
  ThemeMode get theme=> _loadThemeFromBox()?ThemeMode.dark:ThemeMode.light;
void switchTheme() {
    bool isDarkMode = !_loadThemeFromBox();
    Get.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    _saveThemeToBox(isDarkMode);

    _showThemeChangedNotification(isDarkMode);
  }

  // Notification function
  void _showThemeChangedNotification(bool isDarkMode) {
    String message = isDarkMode ? 'Dark mode activated' : 'Light mode activated';

    Get.snackbar(
      'Theme Changed',
      message,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      colorText: isDarkMode ? Colors.white : Colors.black,
    );
  }
}