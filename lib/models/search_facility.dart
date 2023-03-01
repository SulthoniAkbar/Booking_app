import 'package:booking_app/models/facilty_model.dart';

class SearchFacilitiesModel {
  int id;
  String quantity;
  FacilityModel facility;

  SearchFacilitiesModel({
    this.id,
    this.quantity,
    this.facility,
  });

  SearchFacilitiesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    facility = FacilityModel.fromJson(json['facility']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'quantity': quantity,
      'facility': facility.toJson(),
    };
  }
}
