import 'package:flutter/material.dart';

import 'app_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  static final _navigatorGlobalKey = GlobalKey<NavigatorState>();
  static NavigatorState get navigatorState {
    if (_navigatorGlobalKey.currentState == null) {
      throw 'can\'t provide NavigatorState as it isn\'t created yet or already disposed';
    }
    return _navigatorGlobalKey.currentState!;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppNavigation.initialRoute,
      onGenerateRoute: AppNavigation.onGenerateRoute
    );
  }
}