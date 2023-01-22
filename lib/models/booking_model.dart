class BookingModel {
  int id;
  int idRoom;
  String bookingDate;
  String bookingStartDate;
  String bookingEndDate;
  String name;
  String nip;
  String phone;
  String description;
  String participant;
  String token;
  String devisi;

  BookingModel(
      {this.id,
      this.name,
      this.idRoom,
      this.bookingDate,
      this.bookingEndDate,
      this.bookingStartDate,
      this.phone,
      this.participant,
      this.nip,
      this.token,
      this.devisi,
      this.description});

  BookingModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idRoom = json['room_id'];
    bookingDate = json['booking_date'];
    bookingStartDate = json['booking_start_date'];
    bookingEndDate = json['booking_end_date'];
    name = json['name'];
    phone = json['phone'];
    participant = json['participant'];
    nip = json['nip'];
    description = json['description'];
    devisi = json['division_id'];
    token = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'nip': nip,
      'phone': phone,
      'booking_start_date': phone,
      'booking_end_date': phone,
      'participant': participant,
      'description': description,
      'division_id': devisi,
    };
  }
}
