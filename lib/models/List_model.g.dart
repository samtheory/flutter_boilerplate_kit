// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'List_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListM _$ListMFromJson(Map<String, dynamic> json) {
  return ListM(
    id: json['id'] as int,
    nameFarsi: json['name'] as String,
    description: json['description'] as String,
  )..kid = (json['kids'] as List)
      ?.map((e) => e == null ? null : KidM.fromJson(e as Map<String, dynamic>))
      ?.toList();
}

Map<String, dynamic> _$ListMToJson(ListM instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.nameFarsi,
      'description': instance.description,
      'kids': instance.kid,
    };
