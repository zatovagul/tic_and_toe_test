import 'package:flutter/material.dart';
import 'package:tic_and_toe_test/app.dart';
import 'package:tic_and_toe_test/src/common/di/service_locator.dart';

void main() {
  initServiceLocator();
  runApp(const MyApp());
}
