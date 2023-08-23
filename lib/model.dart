import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Model {
  final String name;
  final String age;

  @TimestampConverter() // Apply the custom converter here
  final Timestamp createdAt;

  final DateTime date;

  Model({
    required this.name,
    required this.age,
    required this.createdAt,
    required this.date,
  });
  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);
}

class TimestampConverter implements JsonConverter<Timestamp, int> {
  const TimestampConverter();

  @override
  Timestamp fromJson(int json) => Timestamp.fromMillisecondsSinceEpoch(json);

  @override
  int toJson(Timestamp object) => object.millisecondsSinceEpoch;
}
