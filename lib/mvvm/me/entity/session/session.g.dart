// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Session _$$_SessionFromJson(Map<String, dynamic> json) => _$_Session(
      id: json['id'] as String,
      dwId: json['dwId'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      level: $enumDecodeNullable(_$LevelEnumMap, json['level']),
      calcTarget: json['calcTarget'] as int?,
      timePerLesson: json['timePerLesson'] as int?,
      numberRound: json['numberRound'] as int?,
      breakTime: json['breakTime'] as int?,
      calcCompleted: json['calcCompleted'] as int?,
      startWithBoot: json['startWithBoot'] as bool?,
      done: json['done'] as bool?,
      randomMix: json['randomMix'] as bool?,
      transferTime: json['transferTime'] as int?,
      equipments: (json['equipments'] as List<dynamic>?)
          ?.map((e) => Equipment.fromJson(e as Map<String, dynamic>))
          .toList(),
      customExercise: (json['customExercise'] as List<dynamic>?)
          ?.map((e) => CustomExercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SessionToJson(_$_Session instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dwId': instance.dwId,
      'name': instance.name,
      'description': instance.description,
      'level': _$LevelEnumMap[instance.level],
      'calcTarget': instance.calcTarget,
      'timePerLesson': instance.timePerLesson,
      'numberRound': instance.numberRound,
      'breakTime': instance.breakTime,
      'calcCompleted': instance.calcCompleted,
      'startWithBoot': instance.startWithBoot,
      'done': instance.done,
      'randomMix': instance.randomMix,
      'transferTime': instance.transferTime,
      'equipments': instance.equipments,
      'customExercise': instance.customExercise,
    };

const _$LevelEnumMap = {
  Level.beginner: 'beginner',
  Level.intermediate: 'intermediate',
  Level.advanced: 'advanced',
};

_$_Equipment _$$_EquipmentFromJson(Map<String, dynamic> json) => _$_Equipment(
      image: json['image'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$$_EquipmentToJson(_$_Equipment instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'quantity': instance.quantity,
    };