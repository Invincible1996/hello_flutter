// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reponse_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseBean _$ResponseBeanFromJson(Map<String, dynamic> json) {
  return ResponseBean(
    json['weatherinfo'] == null
        ? null
        : Weather.fromJson(json['weatherinfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResponseBeanToJson(ResponseBean instance) =>
    <String, dynamic>{
      'weatherinfo': instance.weatherinfo,
    };
