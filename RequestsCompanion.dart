import 'package:be/AllScreens/ReqComCurrent.dart';
import 'package:be/AllScreens/ReqComPrevious.dart';
import 'package:be/AllScreens/mainScreen.dart';
import 'package:flutter/material.dart';

class RequestsCompanion extends StatelessWidget {
  static const String idScreen = 'RequestsCompanion';

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
 
      body: new ListView(
        children: [
          DefaultTabController(
            length: 2,
            initialIndex: 1,
            child: Column(
              children: [
                TabBar(tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "السابقة",
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "الحالية",
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )
                ]),
                Container(
                  height: 260.0,

                  child: TabBarView(children: [
                    Center(child: ReqComPrevious()),
          
                  
                    Center(child: ReqComCurrent() ),
                  ]),
                ),
              ],
            ),
          ),
     

        ],
      ),
    );
  }
}