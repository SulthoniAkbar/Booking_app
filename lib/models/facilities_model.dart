import 'package:booking_app/models/facilty_model.dart';

class FacilitiesModel {
  int id;
  int quantity;
  FacilitiesModel facility;

  FacilitiesModel({
    this.id,
    this.quantity,
    this.facility,
  });

  FacilitiesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    facility = FacilityModel.fromJson(json['facility']) as FacilitiesModel;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'quantity': quantity,
      'facility': facility.toJson(),
    };
  }
}
