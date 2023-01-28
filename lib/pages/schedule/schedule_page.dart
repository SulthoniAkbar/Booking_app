import 'package:booking_app/provider/auth_provider.dart';
import 'package:booking_app/provider/schedule_provider.dart';
import 'package:booking_app/themes.dart';
import 'package:booking_app/widget/schedule_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SchedulePage extends StatefulWidget {
  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
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
    ScheduleProvider scheduleProvider = Provider.of<ScheduleProvider>(context);

    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text('Jadwal Ruang'),
        elevation: 0,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: whiteColor,
          child: ListView(
            children: scheduleProvider.schedule
                .map(
                  (schedule) => ScheduleCard(schedule),
                )
                .toList(),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
