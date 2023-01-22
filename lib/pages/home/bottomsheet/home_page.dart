import 'package:booking_app/models/user_model.dart';
import 'package:booking_app/provider/auth_provider.dart';
import 'package:booking_app/themes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  List images = [
    'assets/meeting-room1.jpg',
    'assets/meeting-room2.jpg',
    'assets/meeting-room3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget Header() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, ${user.name}',
                    style: primaryTextStyle3.copyWith(
                        fontSize: 20, fontWeight: semibold),
                  ),
                  // Text(
                  //   '${user.nip}',
                  //   style: purpleTextStyle.copyWith(
                  //       fontSize: 14, fontWeight: light),
                  // )
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/icon_username.png'),
                  )),
            )
          ],
        ),
      );
    }

    Widget bookingRuangButton() {
      return Container(
        height: 51,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        margin: EdgeInsets.only(top: 37),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/booking');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text(
            'Booking Ruang',
            style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
        ),
      );
    }

    Widget scheduleButton() {
      return Container(
        height: 51,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        margin: EdgeInsets.only(top: 19),
        child: TextButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/listruang');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text(
            'Jadwal Ruangan ',
            style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
        ),
      );
    }

    Widget reportingButton() {
      return Container(
        height: 51,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        margin: EdgeInsets.only(top: 19),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/report');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text(
            ' Reporting ',
            style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
        ),
      );
    }

    Widget imageSlider() {
      return CarouselSlider(
        items: images
            .map(
              (image) => Image.asset(image),
            )
            .toList(),
        options: CarouselOptions(),
      );
    }

    return ListView(
      children: [
        Header(),
        imageSlider(),
        bookingRuangButton(),
        scheduleButton(),
        reportingButton()
      ],
    );
  }
}
