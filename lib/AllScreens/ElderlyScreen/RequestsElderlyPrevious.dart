import 'package:be/AllScreens/ElderlyScreen/RequestDetails.dart';
import 'package:be/AllScreens/ReqCom1-elderly.dart';
import 'package:be/AllScreens/ReqComCurrent.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/NavCompanion.dart';
import 'package:flutter/material.dart';

class RequestsElderlyPrevious extends StatelessWidget {
  static const String idScreen = 'RequestsElderlyPrevious';

  @override
  Widget build(BuildContext context) {
   
    return new ListView(
      children: [
        SizedBox(
          height: 15,
        ),
        Container(
          height: 200.0,
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

              Text(" حالة الطلب :مكتمل ",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              SizedBox(height: 10.0),
              RaisedButton(
                color: Colors.grey[700],
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
                  
                     RequestDetails.idScreen, (route) => false);
                },
              ),
               SizedBox(height: 1.0),
              RaisedButton(
                color: Colors.blue[900],
                padding: EdgeInsets.only(left: 99.0, right: 99.0),
                splashColor: Color(0xffffffff),
                child: Text(
                  '   إعادة الطلب',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                  // Navigator.pushNamedAndRemoveUntil(context,
                  //     RegistryElderlyScreen.idScreen, (route) => false);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}