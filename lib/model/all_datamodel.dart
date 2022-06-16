import 'package:json_annotation/json_annotation.dart';

import 'datamodel.dart/datamodel.dart';
part 'all_datamodel.g.dart';


@JsonSerializable()
class AllDataModel {
  @JsonKey(name: 'results')
  List<DataModel> results;

  AllDataModel({this.results = const []});

  factory AllDataModel.fromJson(Map<String, dynamic> json) {
    return _$AllDataModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllDataModelToJson(this);
}
