import 'package:be/AllScreens/ElderlyScreen/HomeElderly.dart';
import 'package:be/AllScreens/ElderlyScreen/RequestsElderlyCurrent.dart';
import 'package:be/AllScreens/ElderlyScreen/RequestsElderlyPrevious.dart';
import 'package:be/AllScreens/ReqComCurrent.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/NavCompanion.dart';
import 'package:flutter/material.dart';

class RequestsElderly extends StatelessWidget {
  static const String idScreen = 'RequestsElderly';

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
                context, HomeElderly.idScreen, (route) => false);
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
                        context, HomeElderly.idScreen, (route) => false);
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
                    Center(child:  RequestsElderlyPrevious()),
          
                  
                    Center(child: RequestsElderlyCurrent() ),
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