import 'package:be/AllScreens/ElderlyScreen/HomeElderly.dart';
import 'package:be/AllScreens/ElderlyScreen/RequestsElderly.dart';
import 'package:be/AllScreens/ElderlyScreen/RequestsElderlyPrevious.dart';
import 'package:be/DataH/firebaseController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/RequestsCompanion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// This class is to show the request details. This supposed to connect with
// firebase to show the details of a certain request
class RequestDetails extends StatefulWidget {
  final DocumentSnapshot document;
  RequestDetails(this.document);

  @override
  State<StatefulWidget> createState() => RequestDetailsPageState();
}

class RequestDetailsPageState extends State<RequestDetails> {
  @override
  Widget build(BuildContext context) {
    // ??
    final fbProvider = Provider.of<FirebaseController>(context, listen: false);

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Text(' الطلبات',
            style: TextStyle(
              fontFamily: 'Times New Roman',
              color: Colors.black,
            )),
        leading: IconButton(
          icon: Icon(
            Icons.contact_support,
            color: Colors.black,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          iconSize: 40.0,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, RequestsCompanion.idScreen, (route) => false);
          },
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 0.0),
              child: Column(children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.black,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  iconSize: 36.0,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RequestsCompanion.idScreen, (route) => false);
                  },
                ),
                Text(
                  "رجوع",
                  style: TextStyle(
                    //   fontFamily: 'Times New Roman',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ])),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              //CommonAppBarWidget.customAppBar(context, 'تفاصيل الطلب', false),
              RequestDetailsCard(
                  context: context,
                  code: widget.document.data()['code'],
                  mateName: fbProvider.userModel.fName +
                      ' ' +
                      fbProvider.userModel.lName,
                  requestOwner: widget.document.data()['requestOwner'],
                  gender: widget.document.data()['selectedGender'],
                  startTime: widget.document.data()['startTime'],
                  date: widget.document.data()['startDate'],
                  direction: widget.document.data()['direction'],
                  requestCase: widget.document.data()['requestStatus']),
            ],
          ),
        ),
      ),
    );
  }

  static Widget RequestDetailsCard(
      {BuildContext context,
        String requestOwner,
        String code,
        String mateName,
        String direction,
        String gender,
        String date,
        String startTime,
        String requestCase}) {
    final size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.grey)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.01),
        child: Column(
          children: [
            commonDetailsRow('رقم الطلب', code),
            SizedBox(height: 5.0),
            commonDetailsRow('صاحب الطلب', requestOwner),
            SizedBox(height: 5.0),
            commonDetailsRow('المرافق', mateName),
            SizedBox(height: 5.0),
            commonDetailsRow('الوجهة', direction),
            SizedBox(height: 5.0),
            commonDetailsRow('جنس المرافق المحدد', gender),
            SizedBox(height: 5.0),
            commonDetailsRow('وقت البدء', startTime),
            SizedBox(height: 5.0),
            commonDetailsRow('التاريخ', date),
            SizedBox(height: 5.0),
            commonDetailsRow('حالة الطلب', requestCase),
          ],
        ),
      ),
    );
  }

  static Widget commonDetailsRow(String title, String subtitle) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(title,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold))),
        Expanded(
            flex: 2,
            child: Text(subtitle, style: TextStyle(color: Colors.grey[700]))),
      ],
    );
  }

}
