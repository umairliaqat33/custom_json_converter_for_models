// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) => Model(
      name: json['name'] as String,
      age: json['age'] as String,
      createdAt: const TimestampConverter().fromJson(json['createdAt'] as int),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'date': instance.date.toIso8601String(),
    };
