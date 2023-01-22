class FeedbackModel {
  int id;
  String roomid;
  String description;
  String media;

  FeedbackModel({
    this.id,
    this.roomid,
    this.description,
    this.media,
  });

  FeedbackModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roomid = json['room_id'];
    description = json['description'];
    // media = json['media'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': id,
      'room_id': roomid,
      'description': description,
    };
  }
}
