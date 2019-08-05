import 'package:json_annotation/json_annotation.dart';

part 'StudyList.g.dart';


@JsonSerializable()
class StudyListResponse{

  List<StudyList> data;

  StudyListResponse(this.data);

  factory StudyListResponse.fromJson(Map<String, dynamic> json) =>
      _$StudyListResponseFromJson(json);
}


@JsonSerializable()
class StudyList {
  String title;

  List<StudyListItem> list;

  StudyList(this.title, this.list);

  factory StudyList.fromJson(Map<String, dynamic> json) =>
      _$StudyListFromJson(json);
}

@JsonSerializable()
class StudyListItem {
  String id;
  String filename;
  String fileurl;
  String filetype;
  String fileclass;
  String filedate;
  String filesort;
  String description;
  String addtime;
  String fileview;
  String uptime;

  StudyListItem(this.id, this.filename, this.fileurl, this.filetype,
      this.fileclass, this.filedate, this.filesort, this.description,
      this.addtime, this.fileview, this.uptime);

  factory StudyListItem.fromJson(Map<String, dynamic> json) =>
      _$StudyListItemFromJson(json);
}
