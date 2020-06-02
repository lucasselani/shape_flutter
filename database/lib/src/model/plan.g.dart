// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlanAdapter extends TypeAdapter<Plan> {
  @override
  final typeId = 0;

  @override
  Plan read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Plan()
      ..name = fields[0] as String
      ..foods = (fields[1] as List)?.cast<PlanFoods>();
  }

  @override
  void write(BinaryWriter writer, Plan obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.foods);
  }
}

class PlanFoodsAdapter extends TypeAdapter<PlanFoods> {
  @override
  final typeId = 1;

  @override
  PlanFoods read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanFoods()
      ..foodId = fields[0] as int
      ..quantity = fields[1] as int
      ..unit = fields[2] as String;
  }

  @override
  void write(BinaryWriter writer, PlanFoods obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.foodId)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.unit);
  }
}
