// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    json['city'] as String,
    json['cityid'] as String,
    json['temp'] as String,
    json['WD'] as String,
    json['WS'] as String,
    json['SD'] as String,
    json['AP'] as String,
    json['njd'] as String,
    json['WSE'] as String,
    json['time'] as String,
    json['sm'] as String,
    json['isRadar'] as String,
    json['Radar'] as String,
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'city': instance.city,
      'cityid': instance.cityid,
      'temp': instance.temp,
      'WD': instance.WD,
      'WS': instance.WS,
      'SD': instance.SD,
      'AP': instance.AP,
      'njd': instance.njd,
      'WSE': instance.WSE,
      'time': instance.time,
      'sm': instance.sm,
      'isRadar': instance.isRadar,
      'Radar': instance.Radar,
    };
