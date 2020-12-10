class TaskResource {
  final String id;
  final String createdAt;
  final String description;
  final String title;

  TaskResource({this.id, this.title, this.description, this.createdAt});

  Map<String, dynamic> toJson() {
    var json = Map<String, dynamic>();
    json['id'] = this.id;
    json['title'] = this.title;
    json['description'] = this.description;
    json['created_at'] = this.createdAt;

    return json;
  }

  TaskResource fromJson(Map<String, dynamic> jsonMap) {
    return null;
  }
}
