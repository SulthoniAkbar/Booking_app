import 'package:booking_app/provider/booking_provider.dart';
import 'package:booking_app/themes.dart';
import 'package:booking_app/widget/booking_card.dart';
import 'package:flutter/material.dart';

class ListBooking extends StatelessWidget {
    @override
  void initState() {
    getInit();

    super.initState();
  }

  getInit() async {
    AuthProvider authProvider =
        Provider.of<AuthProvider>(context, listen: false);

    await Provider.of<ScheduleProvider>(context, listen: false)
        .schedules(authProvider.user.token);
  }
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text('Booking Ruang'),
        elevation: 0,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: whiteColor,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: scheduleProvider.schedule
                .map(
                  (schedule) => ScheduleCard(schedule),
                )
                .toList(),
          ),
        ),
      );
    }

    }
    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
