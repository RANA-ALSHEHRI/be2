import 'package:flutter/material.dart';
import 'package:be/AllScreens/AdminInterfaces/HomeAdmin.dart';
import 'package:be/AllScreens/AdminInterfaces/NotificationAdmin.dart';
import 'package:be/AllScreens/AdminInterfaces/ProfileAdmin.dart';


class NavAdmin extends StatefulWidget {
  static const String idScreen = 'NavAdmin';

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<NavAdmin> {

  static int theCurrentIndex = 1; // the default index
  List<Widget> _widgetOptions = <Widget>[
    ProfileAdmin(), // Index 0
    HomeAdmin(), // Index 1
    NotificationAdmin(), // Index 2
  ];

  void _onItemTap(int index) {
    setState(() {
      theCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Be My Mate'),
      ),
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
            // --- The home interface ---
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: 'الرئيسية',

              //title: new Text('الرئيسية'),
            ),
            // --- The notification interface ---
            BottomNavigationBarItem(
              icon: new Icon(Icons.add_alert),
              label: 'التنبيهات',
              //title: new Text('التنبيهات'),
            ),
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