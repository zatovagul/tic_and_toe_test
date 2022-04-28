
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'tictactoe_settings.g.dart';

@immutable
@HiveType(typeId: 0)
class TicTacToeSettings implements Equatable{
  @HiveField(0)
  final String languageCode;

  @HiveField(1)
  final String themeCode;

  @HiveField(2)
  final bool boardIndexesEnables;

  const TicTacToeSettings({
    this.languageCode = "en", 
    this.themeCode = "light", 
    this.boardIndexesEnables = false
    });

  /// TODO create theme getter
  /// ProxoTheme get theme => ProxoThemeExtension.formString(themeCode);

  
  @override
  List<Object?> get props => [
    languageCode, 
    themeCode, 
    boardIndexesEnables
  ];

  @override
  bool? get stringify => true;

  TicTacToeSettings copyWith({
    String? languageCode,
    String? themeCode,
    bool? boardIndexesEnables,
  }) {
    return TicTacToeSettings(
      languageCode: languageCode ?? this.languageCode,
      themeCode: themeCode ?? this.themeCode,
      boardIndexesEnables: boardIndexesEnables ?? this.boardIndexesEnables,
    );
  }
}