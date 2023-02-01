import 'package:booking_app/models/media_model.dart';

class FeedbackModel {
  int id;
  int roomid;
  String description;
  MediasModel medias;

  FeedbackModel({this.id, this.roomid, this.description, this.medias});

  FeedbackModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roomid = json['room_id'];
    description = json['description'];
    if (json['medias'] != null) {
      medias = List<MediasModel>() as MediasModel;
      json['medias'].forEach((v) {
        medias.add(MediasModel.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'room_id': roomid,
      'description': description,
    };
  }
}
