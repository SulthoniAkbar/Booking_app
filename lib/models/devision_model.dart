class DevisionModel {
  int id;
  String name;

  DevisionModel({
    this.id,
    this.name,
  });

  DevisionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
