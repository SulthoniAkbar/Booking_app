class BookingModel {
  int id;
  int idRoom;
  int idMember;
  DateTime bookingDate;
  DateTime bookingStartDate;
  DateTime bookingEndDate;
  String name;
  String nip;
  String phone;
  String description;
  String participant;
  int devisi;

  BookingModel({
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
  });

  BookingModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idRoom = json['room_id'];
    idMember = json['member_id'];
    bookingDate = DateTime.tryParse(json['booking_date']);
    bookingStartDate = DateTime.tryParse(json['booking_start_date']);
    bookingEndDate = DateTime.tryParse(json['booking_end_date']);
    name = json['name'];
    nip = json['nip'];
    phone = json['phone'];
    description = json['description'];
    participant = json['participant'];
    devisi = double.parse(json['division_id']) as int;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'nip': nip,
      'phone': phone,
      'booking_start_date': bookingStartDate,
      'booking_end_date': bookingEndDate,
      'participant': participant,
      'description': description,
      'division_id': devisi.toString(),
    };
  }
}
