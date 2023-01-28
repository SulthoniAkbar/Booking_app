import 'package:booking_app/provider/feedback_provider.dart';
import 'package:booking_app/themes.dart';
import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class ReportingPage extends StatefulWidget {
  @override
  State<ReportingPage> createState() => _ReportingPageState();
}

class _ReportingPageState extends State<ReportingPage> {
  TextEditingController roomidController = TextEditingController(text: '');
  TextEditingController descriptionController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    FeedbackProvider feedbackProvider = Provider.of<FeedbackProvider>(context);

    handeleReport() async {
      if (await feedbackProvider.feedback(
        roomid: roomidController.text,
        description: descriptionController.text,
      )) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: succesColor,
            content: Text(
              'Berhasil Melakukan Feedback',
              textAlign: TextAlign.center,
            ),
          ),
        );
        Navigator.pushNamed(context, '/home');
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

    Widget roomInput() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pilihan Ruang',
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
                controller: roomidController,
                style: primaryTextStyle,
                decoration: InputDecoration.collapsed(
                  hintText: 'Nama Ruang',
                  hintStyle: subtitleTextStyle,
                ),
              ),
            )
          ],
        ),
      );
      //       )
      //     ],
      //   ),
      // );
    }

    Widget deskripsiInput() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deskripsi',
              style: primaryTextStyle3.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: primaryTextColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_union.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: descriptionController,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Deskripsi',
                          hintStyle: subtitleTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget imageInput() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Foto',
            style: primaryTextStyle3.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/add_image.png', width: 100, height: 100)
        ]),
      );
    }
//     /// Get from gallery
//   _getFromGallery() async {
//     PickedFile pickedFile = await ImagePicker().getImage(
//       source: ImageSource.gallery,
//       maxWidth: 1800,
//       maxHeight: 1800,
//     );
//     if (pickedFile != null) {
//       setState(() {
//         imageFile = File(pickedFile.path);
//       });
//     }
//   }

//   /// Get from Camera
//   _getFromCamera() async {
//     PickedFile pickedFile = await ImagePicker().getImage(
//       source: ImageSource.camera,
//       maxWidth: 1800,
//       maxHeight: 1800,
//     );
//     if (pickedFile != null) {
//       setState(() {
//         imageFile = File(pickedFile.path);
//       });
//     }
//   }
// }

    Widget sendButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text(
            'Kirim',
            style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            // margin: EdgeInsets.symmetric(
            //   horizontal: defaultMargin,
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                roomInput(),
                deskripsiInput(),
                imageInput(),
                sendButton(),
                Spacer(),
              ],
            ),
          ),
        ));
  }
}
