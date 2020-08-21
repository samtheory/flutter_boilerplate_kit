// 1
import 'package:Flutter_boilerplate_kit/models/Kid_model.dart';
import 'package:json_annotation/json_annotation.dart';

// 2
part 'List_model.g.dart';

// 3
@JsonSerializable()
class ListM {
  // 4

  /// Category Id
  @JsonKey(name: 'id')
  int id;



  ///category Farsi name
  @JsonKey(name: 'name')
  String nameFarsi;

  ///category English name
  @JsonKey(name: 'description')
  String description;

  
  @JsonKey(name: 'kids')
  List<KidM> kid;

  

  // 6
  ListM({
   
    this.id,
    this.nameFarsi,
    this.description,

  });

  // 7
  factory ListM.fromJson(Map<String, dynamic> json) => _$ListMFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$ListMToJson(this);
}
