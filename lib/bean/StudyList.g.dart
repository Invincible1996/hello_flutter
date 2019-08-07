// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StudyList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudyListResponse _$StudyListResponseFromJson(Map<String, dynamic> json) {
  return StudyListResponse(
    (json['data'] as List)
        ?.map((e) =>
            e == null ? null : StudyList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StudyListResponseToJson(StudyListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

StudyList _$StudyListFromJson(Map<String, dynamic> json) {
  return StudyList(
    json['title'] as String,
    (json['list'] as List)
        ?.map((e) => e == null
            ? null
            : StudyListItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StudyListToJson(StudyList instance) => <String, dynamic>{
      'title': instance.title,
      'list': instance.list,
    };

StudyListItem _$StudyListItemFromJson(Map<String, dynamic> json) {
  return StudyListItem(
    json['id'] as String,
    json['filename'] as String,
    json['fileurl'] as String,
    json['filetype'] as String,
    json['fileclass'] as String,
    json['filedate'] as String,
    json['filesort'] as String,
    json['description'] as String,
    json['addtime'] as String,
    json['fileview'] as String,
    json['uptime'] as String,
  );
}

Map<String, dynamic> _$StudyListItemToJson(StudyListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'fileurl': instance.fileurl,
      'filetype': instance.filetype,
      'fileclass': instance.fileclass,
      'filedate': instance.filedate,
      'filesort': instance.filesort,
      'description': instance.description,
      'addtime': instance.addtime,
      'fileview': instance.fileview,
      'uptime': instance.uptime,
    };
