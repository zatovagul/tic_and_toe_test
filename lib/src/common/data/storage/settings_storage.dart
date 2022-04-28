import 'dart:io';
import 'dart:ui';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tic_and_toe_test/l10n/generated/ticandtoe_localizations.dart';
import 'package:tic_and_toe_test/src/common/constants/app_constants.dart';
import 'package:tic_and_toe_test/src/common/data/model/storage/tictactoe_settings.dart';


@singleton
class SettingsStorage {
  SettingsStorage(this.box);

  @factoryMethod
  static Future<SettingsStorage> create() async {
    final box = await Hive.openBox<TicTacToeSettings>(AppConstants.appSettingsBox);
    return SettingsStorage(box);
  }

  final Box<TicTacToeSettings> box;

  @disposeMethod
  void dispose() {
    box.close();
  }

  TicTacToeSettings readSettings() {
    final savedSettings = box.get(0);

    if (savedSettings != null) return savedSettings;

    final defaultLocale = Locale(Platform.localeName.split('_')[0]);

    final localeSupported = TicAndToeLocalizations.delegate.isSupported(
      defaultLocale,
    );

    if (!localeSupported) return const TicTacToeSettings();

    return TicTacToeSettings(languageCode: defaultLocale.languageCode);
  }

  Future<void> writeSettings(TicTacToeSettings settings) async {
    await box.clear();
    await box.add(settings);
  }
}
