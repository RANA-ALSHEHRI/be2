import 'package:flutter/material.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/HomeCompanion.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/NotificationCompanion.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/ProfileCompanion.dart';
import 'package:be/AllScreens/CompanionScreen/CompanionInterfaces/RequestsCompanion.dart';

class NavCompanion extends StatefulWidget {
  static const String idScreen = 'NavCompanion';

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<NavCompanion> {

  static int theCurrentIndex = 3; // the default index
  List<Widget> _widgetOptions = <Widget>[
    ProfileCompanion(), // Index 0
    NotificationCompanion(), // Index 1
    RequestsCompanion(), // Index 2
    HomeCompanion(), // Index 3
  ];

  void _onItemTap(int index) {
    setState(() {
      theCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Center(
        child: _widgetOptions.elementAt(theCurrentIndex),
      ),

      //------------------------------------------------------------------------
      // The bottom bar for the companion main interfaces
      //------------------------------------------------------------------------
      bottomNavigationBar: BottomNavigationBar(
          items: [
            // --- The user profile interface ---
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'حسابي',
              //title: Text('صفحتي'),
            ),
            // --- The notification interface ---
            BottomNavigationBarItem(
              icon: new Icon(Icons.add_alert),
              label: 'التنبيهات',
              //title: new Text('التنبيهات'),
            ),
            // --- The requests interface ---
            BottomNavigationBarItem(
              icon: new Icon(Icons.access_time),
              label: 'الطلبات',
              //title: new Text('الطلبات'),
            ),
            // --- The home interface ---
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: 'الرئيسية',

              //title: new Text('الرئيسية'),
            )
          ],
          currentIndex: theCurrentIndex, // this will be set when a new tab is tapped
          onTap: _onItemTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.black,
          iconSize: 45,
          selectedFontSize: 18,
          //selectedLabelStyle: TextStyle.,
          unselectedFontSize: 18,
//          onTap: (index){
//            setState((){
//                theCurrentIndex = index;
//            });
//          },
          elevation: 5
      ),
    );
  }
}