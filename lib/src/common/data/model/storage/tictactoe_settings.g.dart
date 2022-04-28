// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tictactoe_settings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TicTacToeSettingsAdapter extends TypeAdapter<TicTacToeSettings> {
  @override
  final int typeId = 0;

  @override
  TicTacToeSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TicTacToeSettings(
      languageCode: fields[0] as String,
      themeCode: fields[1] as String,
      boardIndexesEnables: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, TicTacToeSettings obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.languageCode)
      ..writeByte(1)
      ..write(obj.themeCode)
      ..writeByte(2)
      ..write(obj.boardIndexesEnables);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TicTacToeSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
