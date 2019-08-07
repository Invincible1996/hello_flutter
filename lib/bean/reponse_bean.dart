import 'package:json_annotation/json_annotation.dart';
import 'index.dart';
part 'reponse_bean.g.dart';
@JsonSerializable()
class ResponseBean {
  Weather weatherinfo;

  ResponseBean(this.weatherinfo);

  factory ResponseBean.fromJson(Map<String, dynamic> json) =>
      _$ResponseBeanFromJson(json);
}
