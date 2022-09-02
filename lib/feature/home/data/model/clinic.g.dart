// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Clinic _$$_ClinicFromJson(Map<String, dynamic> json) => _$_Clinic(
      image: json['image'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      tag: $enumDecode(_$AppTagEnumMap, json['tag']),
    );

Map<String, dynamic> _$$_ClinicToJson(_$_Clinic instance) => <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'address': instance.address,
      'tag': _$AppTagEnumMap[instance.tag]!,
    };

const _$AppTagEnumMap = {
  AppTag.featured: 'featured',
  AppTag.recent: 'recent',
  AppTag.nearby: 'nearby',
};
