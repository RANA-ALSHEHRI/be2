import 'package:be/AllScreens/Request/RequestDetails.dart';
import 'package:be/AllScreens/Request/confirmImage.dart';
import 'package:be/AllScreens/Request/requestController.dart';
import 'package:be/AllScreens/mainScreen.dart';
import 'package:be/AllScreens/Request/RequestsCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeCompanion extends StatelessWidget {
  static const String idScreen = 'HomeCompanion';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: requestsList(context),
          ),
        ));
  }

  // This widget created to display all the accompaniment service requests
  Widget requestsList(BuildContext context) {
    //
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: StreamBuilder(
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              return ListView(
                children: snapshot.data.docs.length == 0
                    ? [
                        Container(
                            height: size.height * 0.7,
                            width: size.width,
                            alignment: Alignment.center,
                            child: Text('لا يوجد طلبات حالياً'))
                      ]
                    : snapshot.data.docs.map((DocumentSnapshot document) {
                        return RequestsCard.serviceRequestCard(
                            context: context,
                            image: document.data()['image'] ??
                                'https://www.kindpng.com/picc/m/451-4517876_default-profile-hd-png-download.png',
                            code: document.data()['code'],
                            direction: document.data()['direction'],
                            name: document.data()['requestOwner'],
                            duration: document.data()['duration'],
                            startTime: document.data()['startTime'] +
                                ' - ' +
                                document.data()['startDate'],
                            onAcceptPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        confirmImage(document))),
                            onIgnorePressed: () { RequestController.cancelRequestWindow(context: context, onCancelPressed: () {});},
                            onDetailsPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RequestDetails(document))));
                      }).toList(),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
              );
          }
        },
        //stream: RequestController.displayRequests(context, 'في الأنتظار'),
      ),
    );
  }


} // end of class
