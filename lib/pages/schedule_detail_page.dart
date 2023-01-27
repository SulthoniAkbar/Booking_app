import 'package:booking_app/models/schedule_model.dart';
import 'package:booking_app/provider/auth_provider.dart';
import 'package:booking_app/provider/schedule_provider.dart';
import 'package:booking_app/provider/scheduledetails_provider.dart';
import 'package:booking_app/themes.dart';
import 'package:booking_app/widget/schedule_card.dart';
import 'package:booking_app/widget/schedule_detail_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScheduleDetailPage extends StatefulWidget {
  final ScheduleModel schedule;
  ScheduleDetailPage(this.schedule);

  @override
  State<ScheduleDetailPage> createState() => _ScheduleDetailPageState();
}

class _ScheduleDetailPageState extends State<ScheduleDetailPage> {
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
    ScheduleProvider scheduleDetailsProvider =
        Provider.of<ScheduleProvider>(context);

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
            children: scheduleDetailsProvider.schedule
                .map(
                  (schedule) => ScheduleDetailCard(schedule),
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
