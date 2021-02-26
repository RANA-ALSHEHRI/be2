//ElderlySendReq2

import 'package:flutter/material.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/RequestDetailsCom.dart';
import 'main1.dart';
import 'mainScreen.dart';

//الطلبات السابقة للمرافق
class ReqComPrevious extends StatelessWidget {
  // This widget is the root of your application.
  static const String idScreen = 'ReqComPrevious';
  @override
  Widget build(BuildContext context) {
    //Scaffold(

    return new ListView(
      children: [
        SizedBox(
          height: 15,
        ),
        Container(
          height: 170.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
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
            children: [
               SizedBox(height: 10.0),
              Text("مطلق الغامدي ",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 18,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10.0),
                  //add image
                  Text("الوجهة : مستشفى الملك فهد ",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ],
              ),

              Text(" حالة الطلب : يبداء الساعة ١٠ صباحا ",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              SizedBox(height: 10.0),
              RaisedButton(
                color: Colors.blue[900],
                padding: EdgeInsets.only(left: 80.0, right: 80.0),
                splashColor: Color(0xffffffff),
                child: Text(
                  'عرض تفاصيل الطلب',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                   Navigator.pushNamedAndRemoveUntil(context,
                      RequestDetailsCom.idScreen, (route) => false);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
