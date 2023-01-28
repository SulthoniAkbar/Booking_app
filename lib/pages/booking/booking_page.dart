import 'package:booking_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class BookingPage extends StatefulWidget {
  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController dateController = TextEditingController(text: '');

    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text('Reporting'),
        elevation: 0,
      );
    }

    Widget startBookingInput() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tangga Mulai',
              style: primaryTextStyle3.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 7,
              ),
              decoration: BoxDecoration(
                color: primaryTextColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextFormField(
                controller: dateController,
                style: primaryTextStyle3,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  hintText: "Enter Date",
                ),
                readOnly: true,
                onTap: () async {
                  DatePicker.showDateTimePicker(context,
                          showTitleActions: true,
                          minTime: DateTime.now(), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.id)
                      .toString();
                },
              ),
            ),
            // child: TextButton(
            //     onPressed: () {
            //       DatePicker.showDateTimePicker(context,
            //           showTitleActions: true,
            //           minTime: DateTime.now(), onChanged: (date) {
            //         print('change $date');
            //       }, onConfirm: (date) {
            //         print('confirm $date');
            //       }, currentTime: DateTime.now(), locale: LocaleType.id);
            //     },
            //     child: Text(
            //       'show date time picker (Chinese)',
            //       style: TextStyle(color: Colors.blue),
            //     )))
          ],
        ),
      );
    }

    Widget endBookingInput() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tangga Mulai',
              style: primaryTextStyle3.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 7,
              ),
              decoration: BoxDecoration(
                color: primaryTextColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextFormField(
                controller: dateController,
                style: primaryTextStyle3,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  hintText: "Enter Date",
                ),
                readOnly: true,
                onTap: () async {
                  DateTime pickedDate = await showDatePicker(
                    context: context, //context of current state
                    initialDate: DateTime.now(),
                    firstDate: DateTime(
                        2000), //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    setState(() {
                      dateController.text = pickedDate.toString();
                    });
                  } else {
                    print("Date is not selected");
                  }
                },
              ),
            )
          ],
        ),
      );
    }

    Widget sendButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/listruang');
          },
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
            // margin: EdgeInsets.symmetric(
            //   horizontal: defaultMargin,
            // ),
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
