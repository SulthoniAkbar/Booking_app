import 'package:booking_app/models/media_model.dart';

class FeedbackModel {
  int id;
  int roomid;
  String description;

  FeedbackModel({
    this.id,
    this.roomid,
    this.description,
  });

  FeedbackModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roomid = json['room_id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'room_id': roomid,
      'description': description,
    };
  }
}
