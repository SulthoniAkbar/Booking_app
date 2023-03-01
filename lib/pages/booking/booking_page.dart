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
      if (startDateController.text.isNotEmpty &&
          endDateController.text.isNotEmpty) {
        try {
          final now = DateTime.now();
          startdate =
              DateFormat("yyyy-MM-dd kk:mm").parse(startDateController.text);
          enddate =
              DateFormat("yyyy-MM-dd kk:mm").parse(endDateController.text);
          if (startdate.isBefore(now)) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: alertColor,
                content: Text(
                  'Tanggal mulai harus setelah atau sama dengan tanggal sekarang',
                  textAlign: TextAlign.center,
                ),
              ),
            );
            return;
          }

          if (enddate.isBefore(startdate)) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: alertColor,
                content: Text(
                  'Tanggal selesai harus setelah tanggal mulai',
                  textAlign: TextAlign.center,
                ),
              ),
            );
            return;
          }
          if (await searchProvider.searchroom(
              token: authProvider.user.token,
              startDate: DateFormat("yyyy-MM-dd kk:mm:ss").format(startdate),
              endDate: DateFormat("yyyy-MM-dd kk:mm:ss").format(enddate))) {
            Navigator.pushNamed(context, '/listruang');
          }
          // if (await searchProvider.searchroom(
          //     token: authProvider.user.token,
          //     startDate: DateFormat("yyyy-MM-dd kk:mm").format(startdate),
          //     endDate: DateFormat("yyyy-MM-dd kk:mm").format(enddate)) {
          //   Navigator.pushNamed(context, '/listruang');
          // }
        } catch (e) {
          print(e.toString());
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: alertColor,
              content: Text(
                'Format tanggal tidak valid',
                textAlign: TextAlign.center,
              ),
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: Text(
              'Tanggal mulai dan selesai tidak boleh kosong',
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
        title: Text('Booking'),
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
                  print(date);
                  String formattedDate =
                      DateFormat("yyyy-MM-dd kk:mm").format(date);
                  startDateController.text = formattedDate;
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
                  print(date);
                  String formattedDate =
                      DateFormat("yyyy-MM-dd kk:mm").format(date);
                  endDateController.text = formattedDate;
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
