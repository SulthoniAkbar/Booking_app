import 'package:booking_app/models/user_model.dart';
import 'package:booking_app/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/themes.dart';
import 'package:provider/provider.dart';

class FormBookingPage extends StatefulWidget {
  // TextEditingController nameController = TextEditingController(text: '');
  // TextEditingController phoneController = TextEditingController(text: '');
  // TextEditingController devisionController = TextEditingController(text: '');
  // TextEditingController genderController = TextEditingController(text: '');
  // TextEditingController addressController = TextEditingController(text: '');
  // TextEditingController nipController = TextEditingController(text: '');

  @override
  State<FormBookingPage> createState() => _FormBookingPagePageState();
}

class _FormBookingPagePageState extends State<FormBookingPage> {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Pemesanan Ruang Rapat',
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama',
              style: primaryTextStyle3.copyWith(
                fontSize: 14,
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
                style: primaryTextStyle3,
                decoration: InputDecoration.collapsed(
                  hintText: user.name,
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget devisi() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Devisi',
              style: primaryTextStyle3.copyWith(
                fontSize: 14,
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
                style: primaryTextStyle,
                decoration: InputDecoration.collapsed(
                  hintText: user.devisi,
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget capacity() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NIP',
              style: primaryTextStyle3.copyWith(
                fontSize: 14,
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
                style: primaryTextStyle,
                decoration: InputDecoration.collapsed(
                  hintText: user.address,
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget nip() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'No Handphone',
              style: primaryTextStyle3.copyWith(
                fontSize: 14,
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
                style: primaryTextStyle3,
                decoration: InputDecoration.collapsed(
                  hintText: user.phone,
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget startDate() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tanggal Mulai',
              style: primaryTextStyle3.copyWith(
                fontSize: 14,
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
                style: primaryTextStyle3,
                decoration: InputDecoration.collapsed(
                  hintText: user.phone,
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget endDate() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tanggal Mulai',
              style: primaryTextStyle3.copyWith(
                fontSize: 14,
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
                style: primaryTextStyle3,
                decoration: InputDecoration.collapsed(
                  hintText: user.phone,
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget participant() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Participant',
              style: primaryTextStyle3.copyWith(
                fontSize: 14,
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
                style: primaryTextStyle3,
                decoration: InputDecoration.collapsed(
                  hintText: user.phone,
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget activity() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kegiatan',
              style: primaryTextStyle3.copyWith(
                fontSize: 14,
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
                style: primaryTextStyle3,
                decoration: InputDecoration.collapsed(
                  hintText: user.phone,
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            nameInput(),
            devisi(),
            nip(),
            capacity(),
            startDate(),
            endDate(),
            participant(),
            activity(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
