import 'package:booking_app/models/notification_model.dart';
import 'package:booking_app/themes.dart';
import 'package:flutter/material.dart';

class NotifCard extends StatelessWidget {
  final NotificationModel notification;
  NotifCard(this.notification);

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
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/meeting-room1.jpg',
                  width: 80,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pemesanan Ruang Rapat',
                      style: secondaryTextStyle.copyWith(fontSize: 12),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      notification.room.name,
                      style: primaryTextStyle3.copyWith(
                        fontSize: 10,
                        fontWeight: semibold,
                      ),
                    ),
                    Text(
                      'Successful',
                      style: succesTextStyle.copyWith(
                          fontSize: 10, fontWeight: semibold),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                notification.bookingDate.toString(),
                style: subtitleTextStyle.copyWith(
                  fontSize: 10,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
