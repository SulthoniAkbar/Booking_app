import 'package:booking_app/models/booking_model.dart';
import 'package:booking_app/models/facilities_model.dart';
import 'package:booking_app/models/facilty_model.dart';

class ScheduleModel {
  int id;
  String name;
  int floor;
  int capacity;
  FacilitiesModel facilities;
  FacilityModel facility;
  BookingModel bookings;

  ScheduleModel(
      {this.id,
      this.name,
      this.floor,
      this.capacity,
      this.facilities,
      this.facility,
      this.bookings});

  ScheduleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    floor = json['floor'];
    capacity = json['capacity'];
    facilities = FacilitiesModel.fromJson(json['room_facilities']);
    facility = FacilityModel.fromJson(json['facility']);
    bookings = BookingModel.fromJson(json['bookings']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'floor': floor,
      'capacity': capacity,
      'facilities': facilities.toJson(),
      'facility': facility.toJson(),
      'bookings': bookings.toJson(),
    };
  }
}
