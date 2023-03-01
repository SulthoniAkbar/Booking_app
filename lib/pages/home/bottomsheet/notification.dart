import 'package:booking_app/provider/auth_provider.dart';
import 'package:booking_app/provider/notif_provider.dart';
import 'package:booking_app/themes.dart';
import 'package:booking_app/widget/notifikasi_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  void initState() {
    getInit();

    super.initState();
  }

  getInit() async {
    AuthProvider authProvider =
        Provider.of<AuthProvider>(context, listen: false);

    await Provider.of<NotifProvider>(context, listen: false)
        .notifacation(authProvider.user.token);
  }

  @override
  Widget build(BuildContext context) {
    NotifProvider notifProvider = Provider.of<NotifProvider>(context);

    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text('Notifikasi'),
        automaticallyImplyLeading: false,
        elevation: 0,
      );
    }

    Widget emptyNotif() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: whiteColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Kamu tidak pesan ruang?',
                style: primaryTextStyle3.copyWith(
                    fontSize: 16, fontWeight: semibold),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Pesan ruang rapat terlebih dahulu',
                style: subtitleTextStyle,
              ),
              SizedBox(height: 20),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 24,
                      ),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  child: Text(
                    'Booking Ruang',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: whiteColor,
          child: ListView(
            children: notifProvider.notif
                .map(
                  (notification) => NotifCard(notification),
                )
                .toList(),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyNotif(),
        content(),
      ],
    );
  }
}
