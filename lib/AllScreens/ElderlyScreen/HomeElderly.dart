import 'package:be/AllScreens/ElderlyScreen/NotificationElderly.dart';
import 'package:be/AllScreens/ElderlyScreen/RequestsElderly.dart';
import 'package:be/AllScreens/main1.dart';
import 'package:be/AllScreens/mainScreen.dart';
import 'package:flutter/material.dart';

//void main() => runApp(HomeElderly());

class HomeElderly extends StatelessWidget {
  static const String idScreen = 'HomeElderly';

//
//  @override
//  HEState createState() => HEState();
//}
//
//class HEState extends State<HomeElderly> {
  bool _isBluetoothOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Text(' Be My Mate',
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
      body: Center(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //------------------------ Requests Button -------------------------

            SizedBox(
              height: 120.0,
            ),
            Container(
              height: 80.0,
              width: 260.0,
              child: FlatButton(
                textColor: Colors.black,
                height: 80.0,
                color: Colors.black12,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                        context, RequestsElderly.idScreen, (route) => false);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'الطلبات',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:50.0),
                      child: Icon(
                        Icons.access_time,
                        color: Colors.black,
                        size: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //------------------------------------------------------------------
            //------------------------ Notification Button -------------------------
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 80.0,
              width: 260.0,
              child: FlatButton(
                minWidth: 180,
                textColor: Colors.black,
                height: 80.0,
                color: Colors.black12,
                onPressed: () {  
                  Navigator.pushNamedAndRemoveUntil(
                        context, NotificationElderly.idScreen, (route) => false);
                        },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'التنبيهات',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:50.0),
                      child: Icon(
                        Icons.add_alert,
                        color: Colors.black,
                        size: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //------------------------------------------------------------------
            //------------------------ Profile Button -------------------------
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 80.0,
              width: 260.0,
              child: FlatButton(
                textColor: Colors.black,
                height: 80.0,
                color: Colors.black12,
                onPressed: () {
                  //  Navigator.pushNamedAndRemoveUntil(
                  //       context, NotificationElderly.idScreen, (route) => false);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'الصفحة الشخصية',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //------------------------------------------------------------------
            //------------------------ Request Companion Button -------------------------
           SizedBox(
              height: 120.0,
            ),
            Container(
              height: 60.0,
              width: 300.0,
              child: FlatButton(
                textColor: Colors.white,
                // height: 80.0,
   color: Color(0xff0045b0),
                onPressed: () { Navigator.pushNamedAndRemoveUntil(
                        context, Main1Screen.idScreen, (route) => false);},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'طلب مرافق',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            //------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}
//============================================================
//}
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Be My Mate'),
//          //centerTitle: Text('Be My Mate'),
//        ),
//        body: Container(
//          width: 297.0,
//          height: 82.0,
//          child: Center(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
////                SizedBox(
////                  height: 80.0,
////                  width: 280.0,
////                ),
//                RaisedButton(
//                  child: Text("الطلبات", style: TextStyle(fontSize: 20, fontFamily: 'Times New Roman'),),
//                  onPressed: null,
//                  color: Colors.black12,
//                  textColor: Colors.black,
//                  //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                  padding: EdgeInsets.all(10.0),
//                  splashColor: Colors.grey,
//                )
//                widget(
//                  child: SizedBox(
//                    child: RaisedButton(
//                      color: Colors.black,
//                      // padding: EdgeInsets.all(15.0),
//                      splashColor: Colors.blue,
//                      child: Container(
//                        height: 50.0,
//                        child: Center(
//                          child: Text(
//                            'مرافق',
//                            style: TextStyle(
//                              fontFamily: 'Times New Roman',
//                              fontSize: 30,
//                              color: const Color(0xffffffff),
//                              fontWeight: FontWeight.w700,
//                            ),
//                            textAlign: TextAlign.center,
//                          ),
//                        ),
//                      ),
//                      onPressed: () {
//                        Navigator.pushNamedAndRemoveUntil(
//                            context, HomeCompanion.idScreen, (route) => false);
//                      },
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//      ),
//    );}
