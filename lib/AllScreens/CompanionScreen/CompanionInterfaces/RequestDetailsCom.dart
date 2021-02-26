import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/RequestsCompanion.dart';
import 'package:be/AllScreens/ElderlyScreen/HomeElderly.dart';
import 'package:be/AllScreens/ElderlyScreen/RequestsElderly.dart';
import 'package:be/AllScreens/ElderlyScreen/RequestsElderlyPrevious.dart';
import 'package:flutter/material.dart';

// This class is to show the request details. This supposed to connect with
// firebase to show the details of a certain request
class RequestDetailsCom extends StatelessWidget {
  static const String idScreen = 'RequestDetailsCom';

  @override
  Widget build(BuildContext context) {
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
      body: 
     
Container(
        padding: const EdgeInsets.all(20.0),
   
        //color: Colors.black12,
        width: 386.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 4,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 16.0,
              spreadRadius: 0.5,
              offset: Offset(0.7, 0.7),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            
            Text(
              "رقم الطلب  ",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
            Text(
              "صاحب الطلب ",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
            Text(
              "المرافق    ",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
            Text(
              "الوجهة     ",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
            Text(
              "جنس المرافق",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
            Text(
              "وقت البدء  ",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
            Text(
              "التاريخ    ",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
            Text(
              "حالة الطلب ",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}
