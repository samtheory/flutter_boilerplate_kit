// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Kid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KidM _$KidMFromJson(Map<String, dynamic> json) {
  return KidM(
    name: json['name'] as String,
    kid: (json['kids'] as List)
        ?.map(
            (e) => e == null ? null : KidM.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$KidMToJson(KidM instance) => <String, dynamic>{
      'name': instance.name,
      'kids': instance.kid,
    };
