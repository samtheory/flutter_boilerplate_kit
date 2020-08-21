// 1
import 'package:json_annotation/json_annotation.dart';

// 2
part 'Kid_model.g.dart';

// 3
@JsonSerializable()
class KidM {
  // 4

  ///category Farsi name
  @JsonKey(name: 'name')
  String name;

  ///category English name
  @JsonKey(name: 'kids')
  List<KidM> kid;

  // 6
  KidM({this.name, this.kid});

  // 7
  factory KidM.fromJson(Map<String, dynamic> json) => _$KidMFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$KidMToJson(this);
}
