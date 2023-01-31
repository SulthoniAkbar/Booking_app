import 'package:booking_app/models/booking_model.dart';
import 'package:booking_app/models/schedule_model.dart';
import 'package:booking_app/themes.dart';
import 'package:flutter/material.dart';

class ScheduleDetailCard extends StatefulWidget {
  final BookingModel schedule;
  ScheduleDetailCard(this.schedule);

  @override
  State<ScheduleDetailCard> createState() => _ScheduleDetailCardState();
}

class _ScheduleDetailCardState extends State<ScheduleDetailCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 5,
        right: 5,
      ),
      padding: EdgeInsets.only(top: 10, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Daftar Pembooking :',
            style: primaryTextStyle3.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            widget.schedule.name,
            style: primaryTextStyle3.copyWith(
              fontSize: 14,
              fontWeight: semibold,
            ),
            maxLines: 1,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Jumlah peserta : ',
            style: primaryTextStyle3.copyWith(
              fontWeight: medium,
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            widget.schedule.participant.toString(),
            style: primaryTextStyle3.copyWith(
              fontWeight: semibold,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Waktu :',
            style: primaryTextStyle3.copyWith(
              fontWeight: medium,
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "${widget.schedule.bookingStartDate} - ${widget.schedule.bookingEndDate}",
            style: primaryTextStyle3.copyWith(
              fontWeight: semibold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
