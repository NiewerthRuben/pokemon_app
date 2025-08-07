import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_info_data.g.dart';
@JsonSerializable()
class TypeInfoData {
  final String name;
  final String url;

  TypeInfoData({
    required this.name,
    required this.url,
  });

  factory TypeInfoData.fromJson(Map<String, dynamic> json) =>
      _$TypeInfoDataFromJson(json);

  Map<String, dynamic> toJson() => _$TypeInfoDataToJson(this);
}