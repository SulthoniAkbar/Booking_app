import 'package:booking_app/pages/booking_room.page.dart';
import 'package:booking_app/themes.dart';
import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              // builder: (context) => BookingRoomPage(),
              ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/home_image.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
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
                    'Nama Ruang:',
                    style: primaryTextStyle3.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Ruang Flora',
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
                    'Kapasitas: ',
                    style: primaryTextStyle3.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '120',
                    style: primaryTextStyle3.copyWith(
                      fontWeight: semibold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Lantai 1',
                    style: primaryTextStyle3.copyWith(
                      fontWeight: semibold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
