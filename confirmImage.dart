import 'dart:io';

import 'package:be/AllScreens/Request/requestController.dart';
import 'package:be/AllScreens/Request/commonButtons.dart';
import 'package:be/DataH/firebaseController.dart';
// import 'package:bemymate_app/Helpers/sharedText.dart';
// import 'package:bemymate_app/Widgets/commonWaitingAlertDialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class confirmImage extends StatefulWidget {
  final DocumentSnapshot documentSnapshot;
  confirmImage(this.documentSnapshot);

  @override
  State<StatefulWidget> createState() => SelectImagePageState();
}

class SelectImagePageState extends State<confirmImage> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        Navigator.pop(context);
        print('No image selected.');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getImage();
  }

  @override
  Widget build(BuildContext context) {
    final reqProvider = Provider.of<RequestController>(context, listen: false);
    final fbProvider = Provider.of<FirebaseController>(context, listen: false);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: _image == null
            ? Container()
            : Stack(
          children: [
            Image.file(
              _image,
              fit: BoxFit.contain,
              height: size.height,
              width: size.width,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.05,
                    horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonButtons.acceptOrCancelButton(
                        btnColor: Colors.green,
                        context: context,
                        onPressed: () {
                          CommonWaitingDialog.showLoadWaitingDialog(context);

                          reqProvider.updateRequestStatus(
                            context: context,
                            requestStatus: 'موافقة المرافق',
                            documentID: widget.documentSnapshot.id,
                            mateID: fbProvider.userModel.id,
                            code: widget.documentSnapshot.data()['code'],
                            requestOwner: widget.documentSnapshot
                                .data()['requestOwner'],
                            mateName: fbProvider.userModel.fName +
                                ' ' +
                                fbProvider.userModel.lName,
                            selectedGender: widget.documentSnapshot
                                .data()['selectedGender'],
                            requestOwnerPhone: widget.documentSnapshot
                                .data()['requestOwnerPhone'],
                            startTime: widget.documentSnapshot
                                .data()['startTime'],
                            startDate: widget.documentSnapshot
                                .data()['startDate'],
                            direction: widget.documentSnapshot
                                .data()['direction'],
                            duration: widget.documentSnapshot
                                .data()['duration'],
                            mateImage: fbProvider.userModel.image,
                            imageFile: _image,
                            matePhone: fbProvider.userModel.phoneNumber,
                            mateBirthDate: fbProvider.userModel.birthDate,
                          );
                        },
                        text: 'تأكيد',
                        height: 50.0),
                    CommonButtons.acceptOrCancelButton(
                        //btnColor: SharedText.mainColor,
                        context: context,
                        onPressed: () => getImage(),
                        text: 'إعادة الإلتقاط',
                        height: 50.0),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
