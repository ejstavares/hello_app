import 'package:json_annotation/json_annotation.dart';

part 'task_resource.g.dart';

@JsonSerializable(nullable: false, fieldRename: FieldRename.snake)
class TaskResource {
  String id;
  String createdAt;
  @JsonKey(name: 'description')
  String description;
  String title;

  TaskResource({this.id, this.title, this.description, this.createdAt});

  Map<String, dynamic> toJson() {
    return _$TaskResourceToJson(this);
    // return {
    //   'id': this.id,
    //   'title': this.title,
    //   'description': this.description,
    //   'created_at': this.createdAt
    // };
  }

  factory TaskResource.fromJson(Map<String, dynamic> jsonMap) =>
      _$TaskResourceFromJson(jsonMap);
  //   return _$TaskResourceFromJson(jsonMap);

  //   // this.id = jsonMap['id'];
  //   // this.title = jsonMap['title'];
  //   // this.description = jsonMap['description'];
  //   // this.createdAt = jsonMap['created_at'];
  // }
}
