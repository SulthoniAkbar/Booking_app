import 'package:booking_app/provider/auth_provider.dart';
import 'package:booking_app/provider/search_room_provider.dart';
import 'package:booking_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class BookingPage extends StatefulWidget {
  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  DateTime startdate;
  DateTime enddate;
  TextEditingController startDateController = TextEditingController(text: '');
  TextEditingController endDateController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider =
        Provider.of<AuthProvider>(context, listen: false);
    SearchProvider searchProvider = Provider.of<SearchProvider>(context);

    getInit() async {}

    handleSend() async {
      if (await searchProvider.searchroom(
        token: authProvider.user.token,
        startDate: DateTime.parse(startDateController.text),
        endDate: DateTime.parse(endDateController.text),
      )) {
        Navigator.pushNamed(context, '/lsitruang');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: Text(
              'Gagal',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
    }

    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text('Reporting'),
        elevation: 0,
      );
    }

    Widget startBookingInput() {
      return Column(
        children: [
          Text(
            'Mulai',
            style: primaryTextStyle3,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: secondaryColor),
                borderRadius: BorderRadius.circular(12)),
            child: TextField(
              controller: startDateController,
              onTap: () {
                DatePicker.showDateTimePicker(context,
                    theme: DatePickerTheme(
                      containerHeight: 210.0,
                    ),
                    showTitleActions: true, onConfirm: (date) {
                  startDateController.text = date.toIso8601String();
                }, currentTime: DateTime.now(), locale: LocaleType.id);
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: defaultMargin, vertical: 10)),
            ),
          ),
        ],
      );
    }

    Widget endBookingInput() {
      return Column(
        children: [
          Text(
            'Selesai',
            style: primaryTextStyle3,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: secondaryColor),
                borderRadius: BorderRadius.circular(12)),
            child: TextField(
              controller: endDateController,
              onTap: () {
                DatePicker.showDateTimePicker(context,
                    theme: DatePickerTheme(
                      containerHeight: 210.0,
                    ),
                    showTitleActions: true, onConfirm: (date) {
                  endDateController.text = date.toIso8601String();
                }, currentTime: DateTime.now(), locale: LocaleType.id);
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: defaultMargin, vertical: 10)),
            ),
          ),
        ],
      );
    }

    Widget sendButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: TextButton(
          onPressed: handleSend,
          // Navigator.pushNamed(context, '/listruang');
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text(
            'Cari',
            style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        appBar: header(),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                startBookingInput(),
                endBookingInput(),
                sendButton(),
              ],
            ),
          ),
        ));
  }
}
