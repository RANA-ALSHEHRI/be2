import 'package:be/AllScreens/mainScreen.dart';
import 'package:flutter/material.dart';

class NotificationCompanion extends StatelessWidget {
  static const String idScreen = 'NotificationCompanion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Text(' التنبيهات ',
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
   body: ListView(children: [
        Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                SizedBox(height: 10.0),
            Container(
              height: 50.0,
              width: 380,
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
              // mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.end,


                children: [
                  SizedBox(height: 10.0, width: 70,),
                  Text("  أكد محمد أحمد طلبك    ",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ],
              ),
            ),

            // Icon(Icons.add_alert),
          ],
        )
      ]),
    );
  }
}
