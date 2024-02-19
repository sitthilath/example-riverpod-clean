import 'package:flutter/material.dart';
import 'package:halpay/shared/domain/providers/flutter_secure_storage_service_provider.dart';
import 'package:halpay/shared/theme/text_styles.dart';
import 'package:halpay/shared/theme/text_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/local/storage_service.dart';
import '../globals.dart';
import 'app_colors.dart';

part 'app_theme.g.dart';

@riverpod
class AppThemeModeNotifier extends _$AppThemeModeNotifier {
  late StorageService storageService;

  ThemeMode currentTheme = ThemeMode.light;

  @override
  ThemeMode build() {
    storageService = ref.watch(flutterSecureStorageServiceProvider);
    getCurrentTheme();
    return ThemeMode.light;
  }

  void toggleTheme() {
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    storageService.set(APP_THEME_STORAGE_KEY, state.name);
  }

  void getCurrentTheme() async {
    final theme = await storageService.get(APP_THEME_STORAGE_KEY);
    final value = ThemeMode.values.byName('${theme ?? 'light'}');
    state = value;
  }
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: AppTextStyles.fontFamily,
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        error: AppColors.error,
        background: AppColors.textBlack,
      ),
      // backgroundColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.textBlack,
      textTheme: TextThemes.darkTextTheme,
      primaryTextTheme: TextThemes.primaryTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.textBlack,
        titleTextStyle: AppTextStyles.h2,
      ),
    );
  }

  /// Light theme data of the app
  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
        textTheme: TextThemes.textTheme,
        primaryTextTheme: TextThemes.primaryTextTheme,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          error: AppColors.error,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: AppTextStyles.buttonTextStyle,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            fixedSize: const Size.fromHeight(52.0),
            backgroundColor: AppColors.primary, // Set your desired default elevation here
          ),
        )
    );
  }
}
