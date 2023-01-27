import 'package:booking_app/models/room_model.dart';

class NotificationModel {
  int id;
  int idRoom;
  int idMember;
  String attachment;
  DateTime bookingDate;
  DateTime bookingStartDate;
  DateTime bookingEndDate;
  String name;
  String nip;
  String phone;
  String description;
  int participant;
  int devisi;
  RoomModel room;

  NotificationModel({
    this.id,
    this.idRoom,
    this.idMember,
    this.bookingDate,
    this.bookingEndDate,
    this.bookingStartDate,
    this.name,
    this.nip,
    this.phone,
    this.description,
    this.participant,
    this.devisi,
    this.room,
    this.attachment,
  });

  NotificationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idRoom = json['room_id'];
    idMember = json['member_id'];
    bookingDate = DateTime.parse(json['booking_date']);
    bookingStartDate = DateTime.parse(json['booking_start_date']);
    bookingEndDate = DateTime.parse(json['booking_end_date']);
    name = json['name'];
    nip = json['nip'];
    phone = json['phone'];
    description = json['description'];
    participant = json['participant'];
    room = RoomModel.fromJson(json['room']);
    attachment = json['attachment'];
    devisi = json['division_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': room,
      'nip': nip,
      'phone': phone,
      'booking_date': bookingDate,
      'booking_start_date': bookingStartDate,
      'booking_end_date': bookingEndDate,
      'participant': participant,
      'attachment': attachment,
      'description': description,
      'division_id': devisi,
    };
  }
}
