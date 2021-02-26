import 'package:be/AllScreens/mainScreen.dart';
import 'package:be/FRverification.dart';
import 'package:flutter/material.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/RequestDetailsCom.dart';

class HomeCompanion extends StatelessWidget {
  static const String idScreen = 'HomeCompanion';

  @override
  Widget build(BuildContext context) {
    // List View
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Text(' طلبات المرافقة',
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
            // Navigator.pushNamedAndRemoveUntil(
            //     context, NavCompanion.idScreen, (route) => false);
          },
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 0.0),
              child: Column(children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.exit_to_app,
                    color: Colors.black,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  iconSize: 36.0,
                  onPressed: () {
                    //Main interface Elderly
                     Navigator.pushNamedAndRemoveUntil(
                         context, MainScreen.idScreen, (route) => false);
                  },
                ),
                Text(
                  "خروج",
                  style: TextStyle(
                    //   fontFamily: 'Times New Roman',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ])),
        ],
      ),
   body: ListView(
      children: [
        Container(
          //margin: EdgeInsets.all(10),
          margin: EdgeInsets.only(right: 10, top: 10),
          child: Text(
            "اليوم",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
        ),

        SizedBox(
          width: 200.0,
          height: 15,
        ),
        // main container
        Container(
          width: 300.0,
          height: 280.0,
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
                blurRadius: 10.0,
                spreadRadius: 0.5,
                offset: Offset(0.7, 0.7),
              ),
            ],
          ),
          // C1 (
          child: Column(
            children: <Widget>[
              Row(
                // r1
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,

                children: <Widget>[
                  // The Request Info
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          //margin: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10, top: 10),
                          child: Text(
                            "رقم الطلب",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontFamily: 'Times New Roman',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Text(
                          "صاحب الطلب",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Times New Roman',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          "الوجهة",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Times New Roman',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          "المدة",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Times New Roman',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          "وقت البدء",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Times New Roman',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    flex: 4,
                  ),
                  // Here to display the eldelry image if found
//                  Image(
//                    //Image.network("here put the URL"),
//                  ),
                  // If there's now photo to display the display empty icon
                  Expanded(
                    child: Container(
                      //margin: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 10, bottom: 30),
                      padding: EdgeInsets.all(10),
                      //decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(30),
                      //border: Border.all(width: 2, color: Colors.grey)),
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ),
                    flex: 3,
                  ),
                ],
              ),
              // Display Request Details Button
              SizedBox(height: 10.0),
              RaisedButton(
                color: Colors.indigo,
                padding: EdgeInsets.only(left: 80.0, right: 80.0),
                splashColor: Color(0xffffffff),
                //    child: Container(
                //  height: 50.0,
                // child: Center(
                child: Text(
                  'عرض تفاصيل الطلب',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  //textAlign: TextAlign.center,
                ),
                // ),
                // ),
                onPressed: () {
                  // Navigator.pushNamedAndRemoveUntil(context,
                  //     RegistryElderlyScreen.idScreen, (route) => false);
                },
              ),

              Row(
                  // r2
                      crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    RaisedButton(
                      color: Colors.red,
                      padding: EdgeInsets.only(left: 50.0, right: 50.0),
                      splashColor: Color(0xffffffff),
                      //    child: Container(
                      //  height: 50.0,
                      // child: Center(
                      child: Text(
                        'رفض',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                      // ),
                      // ),
                      onPressed: () {
                        // Navigator.pushNamedAndRemoveUntil(context,
                        //     RegistryElderlyScreen.idScreen, (route) => false);
                      },
                    ),
                    SizedBox(height: 10.0,
                    width: 20,),
                    RaisedButton(
                      color: Colors.lightGreen[700],
                      padding: EdgeInsets.only(left: 50.0, right: 50.0),
                      splashColor: Color(0xffffffff),
                      //    child: Container(
                      //  height: 50.0,
                      // child: Center(
                      child: Text(
                        'قبول',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                      // ),
                      // ),
                      onPressed: () {
                        //
                       Navigator.pushNamedAndRemoveUntil(context,
                             FRverification.idScreen, (route) => false);
                      },
                    ),
                  ]),
            ],
          ),
        ),
      ],
   ),
    );
  }
} // end of class
