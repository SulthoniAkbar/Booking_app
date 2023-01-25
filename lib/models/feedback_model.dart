import 'package:booking_app/models/media_model.dart';

class FeedbackModel {
  int id;
  int roomid;
  String description;
  List<MediasModel> media;

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
    media = json['medias[]']
        .map(
          (media) => MediasModel.fromJson(media),
        )
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'room_id': roomid,
      'description': description,
      'media': media.map((medias) => medias.toJson()).toList(),
    };
  }
}
