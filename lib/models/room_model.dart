class RoomModel {
  int id;
  String name;
  String floor;
  String capacity;

  RoomModel({
    this.id,
    this.name,
    this.floor,
    this.capacity,
  });

  RoomModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    floor = json['floor'];
    capacity = json['capacity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'floor': floor,
      'capacity': capacity,
    };
  }
}
