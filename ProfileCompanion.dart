import 'package:flutter/material.dart';

import '../../mainScreen.dart';

class ProfileCompanion extends StatefulWidget {
static const String idScreen = 'ProfileCompanion';

  @override
  _ProfileCompanionState createState() => _ProfileCompanionState();
}

class _ProfileCompanionState extends State<ProfileCompanion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: Text(' الصفحة الشخصية ',
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
            

            // Icon(Icons.add_alert),
          ],
        )
      ]),
    );
  }
}

