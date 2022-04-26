import 'package:flutter/material.dart';

abstract class AppRoutes {
  static const home = '/';
  static const splash = '/splash';
  static const opponentSelection = '/game/opponent-selection';
  static const gameHumans = '/game/human-vs-human';
  static const gameEasyBot = '/game/human-vs-bot/easy';
  static const gameHardBot = '/game/human-vs-bot/hard';
  static const gameEasyBots = '/game/bot-vs-bot/easy';
  static const gameHardBots = '/game/bot-vs-bot/hard';
  static const settings = '/settings';
  static const about = '/about';
  static const inDevelopment = '/in-development';
}

class AppNavigation {
  static String get initialRoute => AppRoutes.splash;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => Container(color: Colors.pink));
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => Container());
      default:
        throw 'no case for route ${settings.name}';
    }
  }
}
