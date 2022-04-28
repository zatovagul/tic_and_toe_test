import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tic_and_toe_test/app.dart';
import 'package:tic_and_toe_test/src/common/data/model/storage/tictactoe_settings.dart';
import 'package:tic_and_toe_test/src/common/di/service_locator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await _initHive();

  initServiceLocator();
  runApp(const MyApp());
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TicTacToeSettingsAdapter());
}